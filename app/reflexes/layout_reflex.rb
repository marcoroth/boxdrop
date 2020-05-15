# frozen_string_literal: true

class LayoutReflex < ApplicationReflex
  def set_layout
    session[:layout] = element.dataset[:layout]
  end
end
