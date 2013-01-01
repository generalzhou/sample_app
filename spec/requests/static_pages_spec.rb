require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "| Home")
    end


    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end
  
  describe "Help Pages" do
    
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_content('Help') 
    end
  
  
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "| Help")
    end
  end
  
  describe "About Page" do
    
    it "should have content 'about us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "| About Us")
    end
  end

end