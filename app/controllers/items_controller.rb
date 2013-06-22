class ItemsController < InheritedResources::Base
  actions :index
  respond_to :html, :json
end
