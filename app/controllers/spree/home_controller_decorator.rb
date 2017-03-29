Spree::HomeController.class_eval do

  def index
    @taxons = Spree::Taxon.all
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products.includes(:possible_promotions)
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

  def load_taxons
    @taxons = Spree::Taxon.all
  end

  before_action :load_taxons
  
end
