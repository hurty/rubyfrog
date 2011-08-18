class JobsController < ApplicationController
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(params[:job])
    if @job.save
      redirect_to jobs_path
    else
      render "new"
    end
  end
end
