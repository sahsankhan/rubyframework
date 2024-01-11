require 'appium_lib'

username = 'zubairalam_aiMp4f'
access_key = 'djHXUTeNrbSpndAqYCEe'

case ENV['SERVER']
  when 'LOCAL'
  case ENV['PLATFORM']
    when 'ANDROID'
      case ENV['DEVICE_NAME']
        when "Pixel"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/pixel.txt", __FILE__),\
          verbose: true
        when "Nexus"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/nexus.txt", __FILE__),\
          verbose: true
        when "Nexussmall"
            caps = Appium.load_appium_txt\
            file: File.expand_path("../../support/caps/nexus_small.txt", __FILE__),\
            verbose: true
        when "POCO"
          caps = Appium.load_appium_txt\
            file: File.expand_path("../../support/caps/POCO.txt", __FILE__),\
            verbose: true
        when "infinix"
          caps = Appium.load_appium_txt\
            file: File.expand_path("../../support/caps/infinix.txt", __FILE__),\
            verbose: true
        when "GalaxyA14"
          caps = Appium.load_appium_txt\
            file: File.expand_path("../../support/caps/GalaxyA14.txt", __FILE__),\
            verbose: true
      end

      p caps

      Appium::Driver.new(caps, true)
      Appium.promote_appium_methods Object

    when 'IOS'
      case ENV['DEVICE_NAME']
        when "iPhoneXR"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/iPhoneXR.txt", __FILE__),\
          verbose: true
        when "iPhone8Plus"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/iPhone8Plus.txt", __FILE__),\
          verbose: true
        when "iPhone11"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/iPhone11.txt", __FILE__),\
          verbose: true
      end
      p caps

      Appium::Driver.new(caps, true)
      Appium.promote_appium_methods Object
  end
when 'BROWSERSTACK'
  case ENV['PLATFORM']
    when 'ANDROID'
      case ENV['DEVICE_NAME']
        when "SamsungGalaxyA52"
          caps = {}
          caps['build'] = 'Lineup Mobile Automation'
          caps['name'] = 'single_test'
          caps['device'] = 'Samsung Galaxy A52'
          caps['platformName'] = 'android'
          caps['browserstack.debug'] = true
          caps['app'] = 'bs://fe72e08dede501ec304b9764a818ab0d31aa4461'
          caps['autoGrantPermissions'] = true

          appium_driver = Appium::Driver.new({
                                                 'caps' => caps,
                                                 'appium_lib' => {
                                                     :server_url => "http://#{username}:#{access_key}@hub-cloud.browserstack.com/wd/hub"
                                                 }}, true)
          Appium.promote_appium_methods Object
          p appium_driver
      when "GooglePixel"
        caps = {}
        caps['build'] = 'Ruby Appium Sample'
        caps['name'] = 'single_test'
        caps['device'] = 'Google Pixel 3'
        caps['platformName'] = 'android'
        caps['browserstack.debug'] = true
        caps['app'] = 'bs://d5ccae694d9c68f495d37bbc306a0aceefe34bbe'
        caps['autoGrantPermissions'] = true

        appium_driver = Appium::Driver.new({
                                               'caps' => caps,
                                               'appium_lib' => {
                                                   :server_url => "http://#{username}:#{access_key}@hub-cloud.browserstack.com/wd/hub"
                                               }}, true)
        p appium_driver
      end
  end
end

