television_page = TelevisionPage.new

Given(/^I am navigated to television reviews page$/) do
  television_page.load
end

Then(/^I verify page is sorted by "([^"]*)"$/) do |option|
  expect(television_page.sort_oder_def_option.text).to eq(option)
end

Then(/^I should see the following options within the sort by:/) do |table|
  table.raw.each do |sort_options|
  expect(television_page.sort_order.text).to have_content(sort_options.first)
  end
end

And(/^I select "([^"]*)" option from sort order$/) do |option|
  television_page.sort_order.select(option)
  Timeout.timeout(10) { sleep 1 until page.has_content?(option) }
end

And(/^I verify products are sorted by high to low price order$/) do
  television_page.first_product_price[0]
  puts television_page.first_product_price[0].text
end

And(/^I make note of first product model number$/) do
  television_page.first_product_make[0]
  puts television_page.first_product_make[0].text
end

When(/^I click add to compare on product$/) do
  television_page.first_add_to_compare[0].click
end

And(/^I see "([^"]*)" appears afer added$/) do |remove_from_compare|
  expect(television_page).to have_content(remove_from_compare)
end

And(/^I see compare bar appears$/) do
  television_page.compare_bar
end

And(/^I see product added to compare bar$/) do
  first_product_make = television_page.first_product_make[0].text
  expect(television_page.compare_bar).to have_content(first_product_make)
end

And(/^I click on (.*?) in brands$/) do |brand|
  check(brand)
end

And(/^I see only (.*?) televisions are displaying$/) do |brand_text|
  expect(television_page).to have_content(television_page.brand_text.text)
  puts television_page.brand_text.text
end

And(/^I debug$/) do
  debugger
end
