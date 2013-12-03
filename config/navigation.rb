# -*- coding: utf-8 -*-
# configures your navigation

SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    #primary.item :hotels, I18n.t("admin.menu.hotels"), root_url

    primary.dom_class = 'nav navbar-nav pull-right'

    primary.item :signup, 'sign up', new_user_registration_path
    primary.item :login, 'login', new_user_session_path
    primary.item :logout, 'logout', destroy_user_session_path

    # you can turn off auto highlighting for a specific level
    primary.auto_highlight = true
  end
end
