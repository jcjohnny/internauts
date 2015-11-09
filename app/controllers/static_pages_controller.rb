class StaticPagesController < ApplicationController
  skip_before_action :authenticate

  def index
      @articles = Article.all
  end

  def about
  end

  def contact
  end
end
