require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid" do
    user = User.new(name: "Example User",
                    email: "user@example.com",
                    password: 'foobar', password_confirmation: 'foobar')
    expect(user).to be_valid
  end
  it "is invalid without a name" do
    user = User.new(name: nil, email: "user@example.com")
    expect(user).not_to be_valid
  end
  it "is invalid without an email" do
    user = User.new(name: "Example User", email: " ")
    expect(user).not_to be_valid
  end
  it "is invalid with a name over 50 characters" do
    user = User.new(name: "a" * 51,
                    email: "user@example.com")
    expect(user).not_to be_valid
  end
  it "is invalid with an email over 255 characters" do
    user = User.new(name: "Example User",
                    email: "a" * 244 + "@example.com")
    expect(user).not_to be_valid
  end
  it "email must be unique" do
    user           = User.create(name: "Example User",
                    email: "user@example.com")
    duplicate_user = User.new(name: "Example User",
                    email: "User@example.com")
    expect(duplicate_user).not_to be_valid
  end
  it "password should be present" do
    user = User.new(name: "Example User", email: "user@example.com", password: "  ",
    password_confirmation: "  ")
    expect(user).not_to be_valid
  end
  it "password should have a minimum length" do
    user = User.new(name: "Example User", email: "user@example.com", password: "abcde",
    password_confirmation: "abcde")
    expect(user).not_to be_valid
  end
end
