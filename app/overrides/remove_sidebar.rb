Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "remove_sidebar",
                     :remove => "erb[loud]:contains('spree/shared/sidebar')",
                     :original => "<%= render partial: 'spree/shared/sidebar' if content_for? :sidebar %>")
