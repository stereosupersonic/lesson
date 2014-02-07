# -*- encoding: utf-8 -*-
require 'spec_helper'

feature "Login" do

  let(:user) { create :user, :username => 'Huber' }
  before {  login_as(user) }
  scenario "login" do
    visit "/"
    page.should have_content('Sign out')
  end

end
