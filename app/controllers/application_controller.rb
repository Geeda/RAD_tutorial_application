# protect_from_forgery with: exception
include SessionsHelper

class ApplicationController < ActionController::Base

  def hello
    render html: "hello world!!"
  end

end
