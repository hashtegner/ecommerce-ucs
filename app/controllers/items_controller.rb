class ItemsController < InheritedResources::Base
  self.responder = AppResponder
  actions :index, :show
  respond_to :html, :json, :xml, only: :index
  respond_to :json, :xml, only: :show
end
