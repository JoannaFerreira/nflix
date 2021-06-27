require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


require_relative "helpers"

#todos os recurso do modulo helpers são nativos dentro da execução do cucumber
World(Helpers)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://127.0.0.1:8080" # Docker TooLBox no windows
    #config.app_host = "http://localhost:8080" #Docker no Mac ou Linux
    config.default_max_wait_time = 10
end