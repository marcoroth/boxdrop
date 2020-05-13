class HomeController < ApplicationController
  def index
    @folders = Folder.root
  end
end
