class TelevisionPage < SitePrism::Page

  set_url  "https://www.which.co.uk/reviews/televisions/"

  element   :sort_order,           '[name="sortby"]'
  element   :sort_oder_def_option, '[value="testing_date_desc"]'
  elements  :first_product_make,   '[itemprop="model"]'
  elements  :first_product_price,  '[data-test-element="product-price"]'
  element   :brand_text,           '[data-test-element="description"]'
  elements  :first_add_to_compare, '[data-test-element="product-compare"]'
  element   :compare_bar,           "div.cont-products-compare.active"

end
