class HomeController < ApplicationController
  def index; end

  def show
    @shopping_list = current_user.shopping_list
  end
end
