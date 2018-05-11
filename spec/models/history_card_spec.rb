require 'rails_helper'

RSpec.describe HistoryCard, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:book) }
end
