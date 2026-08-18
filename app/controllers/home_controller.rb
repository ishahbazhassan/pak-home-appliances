class HomeController < ApplicationController
  def index
    @categories = Catalog.categories
    @featured = Catalog.featured
  end
end
