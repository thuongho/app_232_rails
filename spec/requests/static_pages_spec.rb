require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "CS 232 Rails Development" }

  describe "Home page" do

    it "should have content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end

    it "should have title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'ABout Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    
    it "should have content 'CS 232 Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end

    it "should have an h1 element with class name 'page-title'" do
      visit '/static_pages/contact'
      expect(page).to have_selector('h1.page-title')
    end

    it "should have a Definition List <dl> element" do
      visit '/static_pages/contact'
      expect(page).to have_selector('dl')
    end

    it "should have a Definition Term <dt> element" do
      visit '/static_pages/contact'
      expect(page).to have_selector('dt')
    end

    it "should have a Definition Description <dd> element" do
      visit '/static_pages/contact'
      expect(page).to have_selector('dd')
    end

    it "should have a section with class name 'main'" do
      visit '/static_pages/contact'
      expect(page).to have_selector('section.main')
    end

    it "should have an h1.page-title selector in the CSS" do
      visit '/static_pages/contact'
      expect(page).to have_css('h1.page-title')
    end

    it "should have a .main selector in the CSS" do
      visit '/static_pages/contact'
      expect(page).to have_css('.main')
    end
  end
end
