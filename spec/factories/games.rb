FactoryBot.define do
  factory :game do
    mode { [:pvp, :pve, :both].sample } #%i(pvp pve both).sample
    release_date { "2020-12-23 10:53:35" }
    developer { Faker::Company.name }
    system_requirement
  end
end
