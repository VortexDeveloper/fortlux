Spree::ProductsController.class_eval do
  def show
    @taxons = Spree::Taxon.all
    @variants = @product.variants_including_master.
                         spree_base_scopes.
                         active(current_currency).
                         includes([:option_values, :images])
    @product_properties = @product.product_properties.includes(:property)
    @taxon = params[:taxon_id].present? ? Spree::Taxon.find(params[:taxon_id]) : @product.taxons.first
    redirect_if_legacy_path
  end

  def index
    @taxons = Spree::Taxon.all
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products.includes(:possible_promotions)
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

end
