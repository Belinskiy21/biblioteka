require 'ffaker'

FactoryBot.define do
  factory :book do
    sequence(:title)  { |i| FFaker::Book.title + i.to_s }
    description FFaker::Book.description
    published_at '2015'
    author  'Oleg Belinskyi'
  end
end
