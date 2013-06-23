class AppResponder < ActionController::Responder
  include Responders::FlashResponder
  include Responders::HttpCacheResponder

  def to_json
    display resource, callback: controller.params[:callback]
  end
end
