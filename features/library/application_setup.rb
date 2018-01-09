module Library
  class ApplicationSetup
    def initialize
      @pages = {}
    end

    def television_page
      @pages[:television_page] ||= Pages::TelevisionPage.new
    end
  end
end
