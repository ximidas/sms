class ProfimdController < ApplicationController
  require 'open-uri'
  require 'webdrivers'
  def parser

    @site = 'profi.md'
    @country = 'Молдова'
    @browser = Watir::Browser.new :firefox, headless: false
    @browser.goto('https://profi.md/masters?specialization=4')

  end
  
end
