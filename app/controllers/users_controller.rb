class UsersController < ApplicationController
  def index
    @search = params['search']
  end
end
