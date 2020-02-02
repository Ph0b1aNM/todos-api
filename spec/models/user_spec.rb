require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  # ensure 1:m relationship with Todo model
  it { should have_many(:todos) }
  # Validation tests
  # ensure name, email and password_digest are present
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
end
