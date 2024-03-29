class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :contract_type
      t.string :location
      t.text :description
      t.string :company_name
      t.string :company_email
      t.string :company_url
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
