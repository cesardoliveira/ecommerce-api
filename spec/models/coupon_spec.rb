require 'rails_helper'

RSpec.describe Coupon, type: :model do
  it { should validate_presence_of(:code) }
  it { should validate_uniqueness_of(:code).case_insensitive }

  it { should validate_presence_of(:status) }
  it { should define_enum_for(:status).with_values({ active: 1, inactive: 2 }) }

  it { should validate_presence_of(:discount_value) }
  it { should validate_numericality_of(:discount_value).is_greater_than(0) }
  
  it { should validate_presence_of(:due_date) }

  it "cannot have past date due_date" do 
    subject.due_date = 1.day.ago
    subject.valid?
    expect(subject.errors.keys).to include :due_date
  end
  
  it "cannot have current date due_date" do 
    subject.due_date = Time.zone.now
    subject.valid?
    expect(subject.errors.keys).to include :due_date
  end

  it "is valid with future date" do 
    subject.due_date = Time.zone.now + 1.hour
    subject.valid?
    expect(subject.errors.keys).to_not include :due_date
  end
end
