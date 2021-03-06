require 'rails_helper'

RSpec.describe Book, type: :model do

  it { should have_many(:history_cards) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:published_at) }
  it { should validate_presence_of(:description) }

end
