require 'spec_helper'



describe "StaticPages" do

  let(:title_text){ "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custome page title 'Home'" do
    visit '/static_pages/home'
      page.should_not have_selector('title', :text => " | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'"do
      visit '/static_pages/help'
      page.should have_selector('h1', :text =>'Help')
    end

    it "should have the title 'Help'" do
    visit '/static_pages/help'
      page.should have_selector('title', :text => "#{title_text} | Help")
    end
  end

  describe "About page" do
    it "should have the contents 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
     end
  it "should have the title 'About Us'" do
    visit '/static_pages/about'
      page.should have_selector('title', :text => "#{title_text} | About Us")
    end
  end

  describe "Contact page" do
    it "should have the contents 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
      end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{title_text} | Contact")
      end
    end
end
