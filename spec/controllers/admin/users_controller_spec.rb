# -*- coding: utf-8 -*-
require 'spec_helper'

describe Admin::UsersController do

  let(:object)            { create :user, :username => "sonic"  }
  let(:required_field)    { :username }

  before { login_as_admin }

  render_views

  it_behaves_like :a_resource_controller_with_destroy, :excluded_actions => [:show]
end
