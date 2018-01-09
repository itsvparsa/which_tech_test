module Library
  module Pages
    class TelevisionPage < SitePrism::Page

      element :sort_order,           "div._2jShw"

      def first_product_price
        first_product_price = page.all("a._3kWo3>div>p._1Ife5")[0].text
      end

      def first_product_make
        first_product_make = page.all("a._3kWo3>div>p._1lo7f")[0]
      end

      def first_add_to_compare
        add_to_compare_first = page.all("button._1e2c2.action-add")[0]
        add_to_compare_first.click
      end

    end
  end
end


