class Booking < ApplicationRecord
  validates :room_id, :user_id, :check_in, :check_out, presence: true

  belongs_to :room
  belongs_to :user

  def calculate_final_price
    booking_days = (check_out - check_in).to_i
    room_daily_rate = room.daily_rate
    room_price = booking_days * room_daily_rate
    discount = User::LOYALTY_MEMBER_TIER[user.loyalty_member_tier.to_sym]
    discount_price = (room_price * discount) / 100
    
    final_price = room_price - discount_price

    update(final_price: final_price)
  end
end
