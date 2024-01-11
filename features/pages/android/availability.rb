class Availability
  include Helper

  def availability_tab
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Availability')]")
  end

  def availability_heading
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Availability')]")
  end

  def time_off_tab
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'TIME OFF')]")
  end

  def new_req_button
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'New Request')]")
  end

  def timeoff_pending
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Time off request pending')]")
  end

  def timeoff_req_heading
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Time Off Request')]")
  end

  def cancel_timeoff_req_heading
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Cancel Time Off Request')]")
  end
  def cancel_req
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Cancel Request')]")
  end

  def success_msg
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Success! Your request has been canceled.')]")
  end

  def make_changes_btn
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Make Changes')]")
    wait_for_element(Allday_toggle,5)
  end

  def Allday_toggle
    return driver.find_element(:xpath, "//android.widget.Switch")
  end

  def Optional_Notes_heading
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Optional Notes')]")
  end

  def scroll_to_optional_notes
    swipe_to_top(Optional_Notes_heading,1000)
  end
  def Submit_for_Approval_btn
    return driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Submit for Approval')]")
  end
end


