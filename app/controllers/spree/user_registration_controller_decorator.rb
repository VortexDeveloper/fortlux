Spree::UserRegistrationsController.class_eval do

  def load_taxons
    @taxons = Spree::Taxon.all
  end

  before_action :load_taxons

end
