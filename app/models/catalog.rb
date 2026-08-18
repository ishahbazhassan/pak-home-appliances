class Catalog
  Category = Data.define(:slug, :name, :tagline, :description, :icon)
  Product = Data.define(:slug, :category, :name, :tagline, :price, :availability, :spec, :features, :benefits, :specs)

  CATEGORIES = [
    Category.new(
      slug: "fans",
      name: "Fans",
      tagline: "Cooler air. Smarter technology.",
      description: "Ceiling, pedestal, exhaust and energy-saving fans engineered for Pakistani summers.",
      icon: "fan"
    ),
    Category.new(
      slug: "washing-machines",
      name: "Washing Machines",
      tagline: "Powerful washing. Better care.",
      description: "Washers, dryers and twin tubs built for everyday family use.",
      icon: "washer"
    ),
    Category.new(
      slug: "room-air-coolers",
      name: "Room Air Coolers",
      tagline: "Comfort that goes further.",
      description: "AC, AC/DC, inverter and tower coolers for reliable room comfort.",
      icon: "cooler"
    ),
    Category.new(
      slug: "geysers",
      name: "Geysers",
      tagline: "Reliable hot water. Every day.",
      description: "Instant, electric, gas and LPG geysers for home and commercial use.",
      icon: "geyser"
    )
  ].freeze

  PRODUCTS = [
    Product.new(
      slug: "floral-eco-max-56",
      category: "fans",
      name: "Floral Eco Max 56\"",
      tagline: "Quiet airflow for large family rooms.",
      price: 11_500,
      availability: "In stock",
      spec: "56\" | Energy saver",
      features: [ "Energy-efficient motor", "Decorative floral blades", "Low noise operation", "Durable copper winding" ],
      benefits: [ "Cools larger rooms without raising the electricity bill.", "Designed for all-day summer use in Pakistani homes." ],
      specs: { "Size" => "56 inch", "Type" => "Ceiling fan", "Series" => "Eco Max", "Motor" => "Energy saver" }
    ),
    Product.new(
      slug: "prism-eco-max-56",
      category: "fans",
      name: "Prism Eco Max 56\"",
      tagline: "Modern profile. Matchless airflow.",
      price: 12_200,
      availability: "In stock",
      spec: "56\" | Prism blades",
      features: [ "Prism blade design", "High air delivery", "Balanced operation", "Premium finish" ],
      benefits: [ "A contemporary look that still delivers powerful, even cooling." ],
      specs: { "Size" => "56 inch", "Type" => "Ceiling fan", "Series" => "Eco Max", "Finish" => "Prism" }
    ),
    Product.new(
      slug: "deluxe-50-watt",
      category: "fans",
      name: "Deluxe 50 Watt",
      tagline: "Powerful performance on less energy.",
      price: 9_800,
      availability: "In stock",
      spec: "50W | Deluxe",
      features: [ "50 watt motor", "High-speed airflow", "Long-life bearings", "Easy installation" ],
      benefits: [ "Built for daily reliability where power costs matter." ],
      specs: { "Wattage" => "50W", "Type" => "Ceiling fan", "Series" => "Deluxe" }
    ),
    Product.new(
      slug: "executive-ceiling-fan",
      category: "fans",
      name: "Executive Ceiling Fan",
      tagline: "Premium finish for modern interiors.",
      price: 14_900,
      availability: "In stock",
      spec: "Executive series",
      features: [ "Refined housing", "Silent operation", "Strong air throw", "Elegant colour options" ],
      benefits: [ "A statement piece that still works as hard as a utility fan." ],
      specs: { "Type" => "Ceiling fan", "Series" => "Executive" }
    ),
    Product.new(
      slug: "twin-tub-washer",
      category: "washing-machines",
      name: "Twin Tub Washer",
      tagline: "Wash and spin with family-size capacity.",
      price: 32_500,
      availability: "In stock",
      spec: "Twin tub | Semi-auto",
      features: [ "Separate wash and spin", "Durable plastic body", "Water-efficient cycles", "Easy controls" ],
      benefits: [ "Handles daily laundry without complicated programming." ],
      specs: { "Type" => "Twin tub", "Operation" => "Semi-automatic" }
    ),
    Product.new(
      slug: "automatic-washer",
      category: "washing-machines",
      name: "Automatic Washer",
      tagline: "Better care. Less effort.",
      price: 54_000,
      availability: "In stock",
      spec: "Fully automatic",
      features: [ "One-touch programmes", "Fabric-care wash", "Energy-conscious motor", "Compact footprint" ],
      benefits: [ "Everyday washing that looks after clothes and time." ],
      specs: { "Type" => "Washer", "Operation" => "Fully automatic" }
    ),
    Product.new(
      slug: "pak-dryer",
      category: "washing-machines",
      name: "PAK Dryer",
      tagline: "Faster drying when the weather will not help.",
      price: 28_900,
      availability: "In stock",
      spec: "Electric dryer",
      features: [ "Even heat distribution", "Safety thermostat", "Simple timer", "Compact design" ],
      benefits: [ "Keeps laundry moving during humid monsoon weeks." ],
      specs: { "Type" => "Dryer", "Power" => "Electric" }
    ),
    Product.new(
      slug: "inverter-air-cooler",
      category: "room-air-coolers",
      name: "Inverter Air Cooler",
      tagline: "Comfort that goes further on less power.",
      price: 41_500,
      availability: "In stock",
      spec: "Inverter | Room cooler",
      features: [ "Inverter technology", "Large water tank", "Honeycomb cooling pads", "Remote control" ],
      benefits: [ "Steady cooling through long summer afternoons." ],
      specs: { "Type" => "Room air cooler", "Technology" => "Inverter" }
    ),
    Product.new(
      slug: "ac-dc-air-cooler",
      category: "room-air-coolers",
      name: "AC/DC Air Cooler",
      tagline: "Cooling that continues when the grid does not.",
      price: 46_800,
      availability: "In stock",
      spec: "AC/DC | Solar ready",
      features: [ "AC and DC operation", "Solar compatible", "High air throw", "Durable body" ],
      benefits: [ "Built for load-shedding and off-grid hours." ],
      specs: { "Type" => "Room air cooler", "Power" => "AC/DC" }
    ),
    Product.new(
      slug: "tower-cooler",
      category: "room-air-coolers",
      name: "Tower Cooler",
      tagline: "Slim comfort for modern rooms.",
      price: 36_200,
      availability: "In stock",
      spec: "Tower | Space saving",
      features: [ "Vertical airflow", "Oscillation", "Quiet fan speeds", "Space-saving footprint" ],
      benefits: [ "Fits living rooms where a bulky cooler will not." ],
      specs: { "Type" => "Tower cooler", "Form" => "Slim tower" }
    ),
    Product.new(
      slug: "instant-geyser",
      category: "geysers",
      name: "Instant Geyser",
      tagline: "Hot water the moment you need it.",
      price: 18_400,
      availability: "In stock",
      spec: "Instant | Electric",
      features: [ "Rapid heating", "Safety cut-off", "Compact wall mount", "Low maintenance" ],
      benefits: [ "Ideal for kitchens and powder rooms." ],
      specs: { "Type" => "Instant geyser", "Fuel" => "Electric" }
    ),
    Product.new(
      slug: "electric-storage-geyser",
      category: "geysers",
      name: "Electric Storage Geyser",
      tagline: "Reliable hot water. Every day.",
      price: 26_700,
      availability: "In stock",
      spec: "Storage | Electric",
      features: [ "Insulated tank", "Thermostat control", "Anti-rust body", "Family capacity" ],
      benefits: [ "Steady supply for morning routines and large households." ],
      specs: { "Type" => "Storage geyser", "Fuel" => "Electric" }
    ),
    Product.new(
      slug: "gas-geyser",
      category: "geysers",
      name: "Gas Geyser",
      tagline: "Efficient heating for high daily use.",
      price: 22_900,
      availability: "In stock",
      spec: "Gas | High efficiency",
      features: [ "Gas-efficient burner", "Flame failure safety", "Fast recovery", "Wall mounted" ],
      benefits: [ "A practical choice where gas is the everyday fuel." ],
      specs: { "Type" => "Gas geyser", "Fuel" => "Natural gas" }
    )
  ].freeze

  def self.categories
    CATEGORIES
  end

  def self.category(slug)
    CATEGORIES.find { |item| item.slug == slug.to_s }
  end

  def self.products(category: nil, query: nil)
    items = PRODUCTS
    items = items.select { |item| item.category == category.to_s } if category.present?
    if query.present?
      needle = query.to_s.downcase
      items = items.select { |item| "#{item.name} #{item.tagline} #{item.category}".downcase.include?(needle) }
    end
    items
  end

  def self.featured
    PRODUCTS.first(6)
  end

  def self.product(slug)
    PRODUCTS.find { |item| item.slug == slug.to_s }
  end

  def self.related(product)
    PRODUCTS.select { |item| item.category == product.category && item.slug != product.slug }.first(4)
  end
end
