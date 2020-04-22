class StaticPagesController < ApplicationController
  def new
  end

  def contact
    # @user = User.create({
    #   :name => "Example User",
    #   :email => "example@railstutorial.org",
    #   :password => "foobar",
    #   :password_confirmation => "foobar"})
    # @user.save()
  end

  def help
    User.all.each do |user|
      puts user.email
    end
  end
end
