class ChangeConfirmedColumnDefaultInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column_default :bookings, :confirmed, false
  end
end
