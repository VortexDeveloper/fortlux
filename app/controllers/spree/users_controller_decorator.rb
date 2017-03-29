Spree::UsersController.class_eval do

  before_action :load_taxons

  def load_taxons
    @taxons = Spree::Taxon.all
  end
end
