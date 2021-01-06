class PagesController < ApplicationController
  before_action :authenticate_admin!, only: [:dashboard]

  def home
  end

  def resultat
  end

  def ressources
  end

  def questionnaire
  end

  def dashboard
    @articles = Article.all

  end
end
