Given(/^I am navigated to television reviews page$/) do
  visit("https://www.which.co.uk/reviews/televisions/")
end

Then(/^I verify page is sorted by most recently viewed$/) do
  expect(page).to have_content("Most-recently reviewed")
end

Then(/^I should see the following options within the sort by:/) do |table|
  table.raw.each do |sort_options|
  expect(desktop.television_page.sort_order.text).to have_content(sort_options.first)
  end
end

And(/^I select "([^"]*)" option from sort order$/) do |option|
  desktop.television_page.sort_order.select(option)
  Timeout.timeout(10) { sleep 1 until page.has_content?(option) }
end

And(/^I verify products are sorted by high to low price order$/) do
  desktop.television_page.first_product_price
  puts desktop.television_page.first_product_price
end

And(/^I make note of first product model number$/) do
  desktop.television_page.first_product_make
  puts desktop.television_page.first_product_make.text
end

When(/^I click add to compare on product$/) do
  desktop.television_page.first_add_to_compare
end

And(/^I see "([^"]*)" appears afer added$/) do |remove_from_compare|
  expect(page).to have_content(remove_from_compare)
end

And(/^I see compare bar appears$/) do
  expect(page).to have_css("div.cont-products-compare.active")
end

And(/^I see product added to compare bar$/) do
  first_product_make = desktop.television_page.first_product_make.text
  expect(find("div.cont-products-compare.active")).to have_content(first_product_make)
end

And(/^I click on (.*?) in brands$/) do |brand|
  check(brand)
  sleep 1 # make sure page loads
end

And(/^I see only (.*?) televisions are displaying$/) do |brand|
  brand_text = find("h1._26KGt._2bxY4").text
  Timeout.timeout(10) { sleep 1 until brand_text }
  expect(page).to have_content(brand_text)
  puts brand_text
end

And(/^I debug$/) do
  debugger
end


