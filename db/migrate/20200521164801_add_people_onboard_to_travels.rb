class AddPeopleOnboardToTravels < ActiveRecord::Migration[6.0]
  def change
    add_column :travels, :people_onboard, :integer, default: 0
  end
end
