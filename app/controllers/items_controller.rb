class ItemsController < InheritedResources::Base
  self.responder = AppResponder
  actions :index, :show

  respond_to :json, :xml
end
