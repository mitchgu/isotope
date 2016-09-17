class StaticPageController < ApplicationController
  def show
    render template: "static_page/#{params[:page]}"
  end
end
