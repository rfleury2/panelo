require 'rails_helper'

RSpec.describe Contest, type: :model do
  it { should have_many :games }
  it { should have_many :players }

  it { should validate_presence_of :title }
  it { should validate_presence_of :category }
end
