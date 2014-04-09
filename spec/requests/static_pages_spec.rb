require 'spec_helper'

describe "Static pages" do

  subject {page}
  let(:base_title) { "CS 232 Rails Development" }

  describe "Home page" do
    before { visit root_path}

    it {should have_content('Home')}
    it {should have_title("#{base_title} | Home")}
  end

  describe "Help page" do
    before { visit help_path}

    it {should have_content('Help')}
    it {have_title("#{base_title} | Help")}

  end

  describe "About page" do
    before { visit about_path}

    it {should have_content('About Us')}
    it {should have_title("#{base_title} | About Us")}
    
  end

  describe "Contact page" do
    before {visit contact_path}
    
    it {should have_content('Contact')}
    it {should have_title("#{base_title} | Contact")}
    it {should have_selector('h1.page-title')}
    it {should have_selector('dl')}
    it {should have_selector('dt')}
    it {should have_selector('dd')}
    it {should have_selector('section.main')}
    it {should have_css('h1.page-title')}
    it {should have_css('.main')}

  end
end
