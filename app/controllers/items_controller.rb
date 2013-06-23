class ItemsController < InheritedResources::Base
  actions :index
  self.responder = AppResponder
  respond_to :html, :json
end
