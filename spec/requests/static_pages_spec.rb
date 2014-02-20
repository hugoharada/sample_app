require 'spec_helper'


describe "Static pages" do
  subject {page}

  describe "Home page" do
    before { visit  root_path}
    it {page.should have_content('Sample App')}
    it {have_selector('title', :text => "Ruby on Rails Tutorial Sample App")}
    it {have_selector('title', :text => "| Home")}
  end

  describe "Help" do
    before {visit help_path}
    it {have_content('help')}
    it {have_selector('title',  :text => "| Help")}
  end

  describe "About" do
    before {visit about_path}  
    it {have_content('About')}
    it {have_selector('title',  :text => "| About")}
  end

  describe "Contact page" do
    before {visit contact_path}
    it {have_selector('h1',  :text => 'Contact')}
    it {have_selector('title',  :text => "Ruby on Rails Tutorial Sample App | Contact")}
  end



end
