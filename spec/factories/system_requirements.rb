FactoryBot.define do
  factory :system_requirement do
    sequence(:name) { |n| "Basic #{n}" }
    operational_system { Faker::Computer.os }
    storage { "15GB" }
    processor { "AMD Ryzen 7" }
    memory { "4GB" }
    video_board { "N/A" }
  end
end
