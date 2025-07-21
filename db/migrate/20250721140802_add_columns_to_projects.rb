class AddColumnsToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :email, :string
    add_column :projects, :short_name, :string
    add_column :projects, :offer_date, :datetime
    add_column :projects, :order_date, :datetime
  end
end
