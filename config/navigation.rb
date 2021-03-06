# -*- coding: utf-8 -*-
# configures your navigation

SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    #primary.item :hotels, I18n.t("admin.menu.hotels"), root_url

    primary.dom_class = 'nav navbar-nav pull-right'

    if current_user
      primary.item :logout, 'Выйти', destroy_user_session_path
    else
      primary.item :signup, 'Присоединиться', new_user_registration_path
      primary.item :login, 'Войти', new_user_session_path
    end

    # you can turn off auto highlighting for a specific level
    primary.auto_highlight = true
  end
end
