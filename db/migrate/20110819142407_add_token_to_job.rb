class AddTokenToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :token, :string
  end
end
