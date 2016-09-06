class UsersController < ApplicationController
  def my_portfolio
    @user_stocks = current_user.stocks 
    @user = current_user
  end

  def full_name
      return "#{first_name} #{last_name}".strip if (first_name || last_name)
        "Anonymous"
  end
end
