class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    Dir.glob(Rails.root + '/app/controllers/*.rb').each { |file| require file }
    models = Dir[Rails.root.join('app/controllers/*_controller.rb')].map { |path| path.match(/(\w+)_controller.rb/); $1 }.compact
    
    @models = models.select { |model| model != 'application' }
  end
end
