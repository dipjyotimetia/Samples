require_relative '../lib/utils/perfecto-utils'
require_relative '../lib/geico_pages'

When /^I navigate to Geico home page$/ do
  @homePage = Geico::HomePage.new Utils::Device.driver
end

Then /^I choose (.*) insurance$/ do |insurance_type|
  @homePage.insurance_type insurance_type
end

Then /^Insert my ZIP Code: (\d+)$/ do |zip|
  @homePage.insert_zip zip
end

And /^Click start button$/ do
  @homePage.submit
end

Given /^I click (.*) on the insurance checkbox$/ do |ans|
  @costumerPage = Geico::CostumerPage.new Utils::Device.driver
  @costumerPage.has_insurance ans
end

And /^I submit the Customer Information form$/ do
  @costumerPage.insert_costumer_info
end