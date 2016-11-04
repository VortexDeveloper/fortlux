Deface::Override.new(:virtual_path => "spree/home/index",
                     :name => "slider",
                     :insert_before => "[data-hook='homepage_products']",
                     :partial => "spree/shared/slider")
