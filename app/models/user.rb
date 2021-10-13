class User < ApplicationRecord
  has_many :test_users
  has_many :tests, through: :test_users
  has_many :author_tests, class_name: 'Test', foreign_key: 'author_id'

  def user_tests(test_level)
    tests.where(level: test_level)
  end
end