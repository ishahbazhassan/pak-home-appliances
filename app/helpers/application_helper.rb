module ApplicationHelper
  def pak_price(amount)
    number_to_currency(amount, unit: "Rs. ", precision: 0, delimiter: ",")
  end

  def pak_nav_class(path)
    "pak-nav-link#{" is-active" if current_page?(path)}"
  end

  def category_icon(name)
    icons = {
      "fan" => "fas fa-fan",
      "washer" => "fas fa-tshirt",
      "cooler" => "fas fa-wind",
      "geyser" => "fas fa-tint"
    }
    icons[name] || "fas fa-cube"
  end
end
