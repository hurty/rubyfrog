require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "the job factory should produce a valid job" do
    job = Factory.build(:job)
    assert job.valid?
  end

  test "job should have a title" do
    job = Factory.build(:job, title: "")
    assert !job.valid?
  end
  
  test "job should have a contract type" do
    job = Factory.build(:job, contract_type: "")
    assert !job.valid?
  end
  
  test "job should have a location" do
    job = Factory.build(:job, location: "")
    assert !job.valid?
  end
  
  test "job should have a description" do
    job = Factory.build(:job, title: "")
    assert !job.valid?
  end
  
  test "job should have a the name of the company" do
    job = Factory.build(:job, company_name: "")
    assert !job.valid?
  end
  
  test "job should have an email of the company in order to apply" do
    job = Factory.build(:job, company_email: "")
    assert !job.valid?
  end
  
  test "job doesn't require the company website url" do
    job = Factory.build(:job, company_url: "")
    assert job.valid?
  end
  
  test "job is not public by default" do
    job = Factory.build(:job)
    assert !job.public?
  end
end
