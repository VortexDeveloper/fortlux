Spree::HomeController.class_eval do

  def index
    @taxons = Spree::Taxon.all
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products.includes(:possible_promotions)
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

end
