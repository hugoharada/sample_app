require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_title("Ruby on Rails Tutorial Sample App")

    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => "| Home")
    end


  end

  describe "Help" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',  :text => "| Help")
    end

  end

  describe "About" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',  :text => "| About")
    end


end
