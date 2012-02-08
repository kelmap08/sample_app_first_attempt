require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  it "should have the right title", :chapter3 => "true" do
	  get 'home'
	  response.should have_selector("title",
					:content => "Ruby on Rails Tutorial Sample App | Home")
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end
 
  it "should have the right title", :chapter3 => "ture" do
	  get 'contact'
	  response.should have_selector("title", :content =>
					"Ruby on Rails Tutorial Sample App | Contact")
  end

  describe "GET 'about'"do
	  it "should be successful", :chapter3 => "true" do
		  get 'about'
		  response.should be_success
	  end
  end

  it "should have the right title", :chapter3 => "true" do
	  get 'about'
	  response.should have_selector("title", :content =>
					"Ruby on Rails Tutorial Sample App | About")
  end

  end
