Spree::UserSessionsController.class_eval do
  def new
    @taxons = Spree::Taxon.all
  end
end
