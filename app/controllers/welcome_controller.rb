class WelcomeController < ApplicationController
  def index
    @items = Item.order("updated_at DESC").limit(30)
  end
end
