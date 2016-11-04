Deface::Override.new(:virtual_path => "spree/home/index",
                     :name => "products",
                     :replace => "[data-hook='homepage_products']",
                     :partial => "spree/shared/products")
