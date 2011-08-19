class JobsController < ApplicationController
  def index
    @jobs = Job.where(public: true).order("created_at DESC")
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
    @job.public = true
    @job.save
    redirect_to job_path(@job)
  end
  
  def show
    @job = Job.find(params[:id])
  end
end
