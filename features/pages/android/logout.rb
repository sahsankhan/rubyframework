class Logout
  include Helper

  def settings_tab
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Settings')]")
  end

  def settings_tab_spanish
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Ajustes')]")
  end

  def settings_heading_spanish
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Ajustes')]")
  end

  def new_schedule_released_heading
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'New Schedule Released')]")
  end
  def Settings_heading
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Settings')]")
  end

  def profile_heading_spanish
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Perfil')]")
  end

     return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Sign out')]")
  end

  # def scroll_to_save_btn
  #   swipe_to_top(new_schedule_released_heading,1000)
  # end

  end