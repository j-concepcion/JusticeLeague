class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :street_adderss, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :place_of_birth, :string
    add_column :users, :civil_status, :string
    add_column :users, :spouse, :string
    add_column :users, :citizenship, :string
    add_column :users, :date_of_natural_reacq, :date
    add_column :users, :cert_no_natural_reacq, :string
    add_column :users, :por_mun_years, :integer
    add_column :users, :por_mun_months, :integer
    add_column :users, :por_phil_years, :integer
    add_column :users, :profession, :string
    add_column :users, :tin, :string
  end
end
