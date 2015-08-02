class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
    @job.skills.new
  end

  def create
    @job = Job.new job_params
    if @job.save
      redirect_to jobs_path
    else
      render 'new'
    end
  end

  def show
    @job = Job.find_by(params[:id])
  end

  def edit
  end

  def delete
  end

private
  def job_params
    params.require(:job).permit(:job_start,:job_end,:location_street, :location_city, :location_zip, :state,{:skills => [:sk_block_mason, :sk_brick_mason, :sk_finisher, :sk_stone_mason, :sk_form_setter]})
  end

end
