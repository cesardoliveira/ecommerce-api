require 'rails_helper'

RSpec.describe Coupon, type: :model do
  it { should validate_presence_of(:code) }
  it { should validate_uniqueness_of(:code).case_insensitive }

  it { should validate_presence_of(:status) }
  it { should define_enum_for(:status).with_values({ active: 1, inactive: 2 }) }

  it { should validate_presence_of(:discount_value) }
  it { should validate_numericality_of(:discount_value).is_greater_than(0) }
  
  it { should validate_presence_of(:due_date) }
end
