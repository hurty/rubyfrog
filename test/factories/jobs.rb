# encoding: utf-8

FactoryGirl.define do
  factory :job do
    title         "Développeur rails"
    contract_type "CDI"
    location      "Nantes"
    description   "Coucou la description"
    company_name  "knpLabs"
    company_email "hello@knplabs.com"
    company_url   "http://www.knplabs.com"
  end
end