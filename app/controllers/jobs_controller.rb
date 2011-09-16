# encoding: utf-8

class JobsController < ApplicationController
  def index
    @jobs = Job.where(public: true).order("created_at DESC")
    
    if @jobs.empty?
      @no_offer_msg = "Il n'y pas d'offres pour le moment"
    end
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(params[:job])
    if @job.save
      redirect_to preview_job_path(id: @job.token)
    else
      render "new"
    end
  end
  
  def edit
    @job = Job.find_by_token!(params[:id])
  end
  
  def update
    @job = Job.find_by_token!(params[:id])
    if @job.update_attributes(params[:job])
      redirect_to preview_job_path(id: @job.token)
    else
      render "edit"
    end
  end
  
  def preview
    @job = Job.find_by_token!(params[:id])
  end
  
  def publish
    @job = Job.find_by_token!(params[:id])
    unless @job.public?
      @job.publish      
      @job.save
    end
    redirect_to confirm_publication_job_path(id: @job.token)
  end
  
  def confirm_publication
    @job = Job.find_by_token!(params[:id])
  end
  
  def destroy
    @job = Job.find_by_token!(params[:id])
    @job.destroy
  end
  
  def show
    @job = Job.find(params[:id])
  end
  
  def search
    @tags = params[:tags]
    
    if @tags.blank?
      @jobs = Job.where(public: true).order("created_at DESC")
    else
      # Search in the description large text field
      jobs_by_description = Job.where(public: true).search(description: @tags)
      # Search accross all other string fields
      jobs_by_metadatas = Job.where(public: true).search(@tags)

      @jobs = jobs_by_metadatas | jobs_by_description
      
      if @jobs.empty?
        @no_offer_msg = "Il n'y pas d'offres correspondant à votre recherche"
      end
    end
  end
end
