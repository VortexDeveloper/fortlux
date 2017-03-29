Deface::Override.new(:virtual_path => "spree/home/index",
                     :name => "lastest",
                     :replace => "[data-hook='homepage_products']",
                     :partial => "spree/shared/lastest")
