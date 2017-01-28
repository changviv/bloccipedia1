FactoryGirl.define do
  factory :wiki do
    title Faker::TwinPeaks.quote
    body Faker::Lorem.paragraph
    private false
    user nil
  end
end
