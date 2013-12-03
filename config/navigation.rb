# -*- coding: utf-8 -*-
# configures your navigation

SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    #primary.item :hotels, I18n.t("admin.menu.hotels"), root_url

    primary.dom_class = 'nav navbar-nav pull-right'

    if current_user
      primary.item :logout, 'logout', destroy_user_session_path
      primary.item :add_project, 'Add project', new_project_path
    else
      primary.item :signup, 'sign up', new_user_registration_path
      primary.item :login, 'login', new_user_session_path
    end

    # you can turn off auto highlighting for a specific level
    primary.auto_highlight = true
  end
end
