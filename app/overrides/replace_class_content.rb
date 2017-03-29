Deface::Override.new(
  :virtual_path       => 'spree/layouts/spree_application',
  :name               => 'replace_class_content',
  :set_attributes     => 'div#content',
  :attributes         => {:class => 'col-sm-12'})
