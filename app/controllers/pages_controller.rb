class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]

    if params[:member]
      @members = @members.select { |member| member.include?(params[:member])}
    end
  end
end
