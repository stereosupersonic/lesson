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

require 'spec_helper'

describe User do

  describe 'validation' do
    it "should be valid" do
      build(:user).should be_valid
    end

    it "should not be valid without username" do
      build(:user, :username => nil).should  have(1).errors_on(:username)
    end
  end

end
