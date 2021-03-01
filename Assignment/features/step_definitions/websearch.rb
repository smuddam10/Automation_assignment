Given(/^the user navigates to google$/) do
  @browser = Selenium::WebDriver.for :firefox
  @browser.navigate.to 'http://www.google.com'
end

Given(/^the user clicks on search field$/) do
  driver.find_element(:name, 'q').click
end

Given(/^the user enters the "(.*)" to search$/) do |keyword|
  @page.websearch = new websearch
  text_box.sendkeys(keyword)
end

When(/^the user clicks on the search$/) do
  search_btn.click
end

When(/^the user can able to verify the search pages are loaded$/) do
  expect_true(search_results)
end
