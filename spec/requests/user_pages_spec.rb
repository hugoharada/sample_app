require 'spec_helper'

describe "User pages" do
  subject {page}

  describe "signup page" do
    before { visit  signup_path}
    it {have_selector('h1', :text => "Sign up")}
    it {have_selector('title', :text => "| Sign up")}
  end


end
