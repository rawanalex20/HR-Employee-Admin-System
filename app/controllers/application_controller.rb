class ApplicationController < ActionController::Base
    around_action :switch_locale
    
    def switch_locale(&action)
        I18n.default_locale = params[:locale] || I18n.default_locale
        I18n.with_locale(I18n.default_locale, &action)
    end

end
