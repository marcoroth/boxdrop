# frozen_string_literal: true

class LayoutReflex < ApplicationReflex
  def set_layout
    session[:layout] = element.dataset[:layout]

    cable_ready.clear_turbolinks_cache
  end
end
