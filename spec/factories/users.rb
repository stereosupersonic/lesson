# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string(255)      default(""), not null, indexed
#  email                  :string(255)      default(""), not null, indexed
#  encrypted_password     :string(255)      default(""), not null
#  admin                  :boolean          default(FALSE), not null
#  locked                 :boolean          default(FALSE), not null
#  slug                   :string(255)      indexed
#  reset_password_token   :string(255)      indexed
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)      indexed
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

# This will guess the User class
FactoryGirl.define do
  factory :user do
    username  { Faker::Name.last_name }
    email     { Faker::Internet.email }
    password  { 1234 }
    password_confirmation { |r| r.password }
    admin false

    factory :admin do
      admin      true
    end
  end
end
