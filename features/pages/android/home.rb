class Home
  include Helper

  def main_page
    return driver.find_element(:xpath, "//android.widget.ImageView")
  end

  def email_textfield
    return driver.find_element(:xpath, "//android.widget.EditText[contains(@text, 'Email or Phone Number')]")
  end

  def sign_in_btn
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Sign In')]")
  end


  def submit_btn
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Submit')]")
  end

  def code_heading
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Enter the 4-digit verification code')]")
  end

  def code_field
    return driver.find_element(:xpath, "//android.widget.EditText[contains(@text, '')]")
  end

  def welcome_text
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Welcome, Louis Lineup')]")
  end

  def welcome_text_spanish
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Bienvenido, Louis Lineup')]")
  end

  def invalid_email
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Invalid email or phone number')]")
  end

  def error_wrongcode
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Something went wrong. Please try again.')]")
  end

  def Login_email(email_or_phone)
    email_textfield.send_keys(email_or_phone)
  end

  def Login_digit_code(code_value)
    wait_for_element(code_field,2)
    code_field.send_keys(code_value)
  end

end
