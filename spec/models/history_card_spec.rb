require 'rails_helper'

RSpec.describe HistoryCard, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:book) }
  it { should validate_presence_of(:book_title) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:book_id) }
end
