require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe User, type: :model do
  describe "#valid?" do
    describe "is valid when email is unique" do
      user = User.new(
        first_name: "Adam",
        username: SecureRandom.hex(4),
      )
      user.email = "adam@example.org"
      expect(user.valid?).to be true
    end
  end
end