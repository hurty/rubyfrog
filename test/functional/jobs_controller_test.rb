# encoding: utf-8

require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  test "should get jobs list" do
    get :index
    assert_response :success
  end
  
  test "should get new job form" do
    get :new
    assert_response :success
  end
  
  test "should create a new job offer" do
    assert_difference "Job.count" do
      post :create, job: { 
        title: "Rails developer",
        contract_type: "CDI",
        location: "Nantes",
        description: "Job description!",
        company_name: "Knplabs",
        company_url: "http://www.knplabs.com",
        company_email: "hello@knplabs.com",
      }
    end
  end
  
  test "should not create a new job offer" do
    assert_no_difference "Job.count" do
      post :create, job: { 
        title: "Rails developer"
      }
    end
  end
  
  test "should get the job edition form" do
    job = Factory(:job)
    get :edit, id: job.id
    assert_response :success
  end
  
  test "should get job offer preview" do
    job = Factory(:job)
    get :preview, id: job.id
    assert_response :success
    assert_select "body", /publier/
  end
end
