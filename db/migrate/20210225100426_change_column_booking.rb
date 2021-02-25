class ChangeColumnBooking < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :users_id, :user_id
    rename_column :bookings, :pets_id, :pet_id
  end
end
