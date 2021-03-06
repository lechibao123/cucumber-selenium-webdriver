# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Login' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'login' do
    @driver.get('http://the-internet.herokuapp.com/login')
    @driver.manage.resize_to(1296, 696)
    @driver.find_element(:id, 'username').click
    @driver.find_element(:id, 'username').send_keys('tomsmith')
    @driver.find_element(:css, 'em:nth-child(2)').click
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys('SuperSecretPassword!')
    @driver.find_element(:css, '.fa').click
    expect(@driver.title).to eq('The Internet')
    expect(@driver.find_element(:id, 'flash').text).to eq('You logged into a secure area!\\\\n×')
  end
end
