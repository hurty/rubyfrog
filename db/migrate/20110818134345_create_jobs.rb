class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :type
      t.string :location
      t.text :description
      t.string :company_name
      t.string :company_email
      t.string :company_url

      t.timestamps
    end
  end
end
