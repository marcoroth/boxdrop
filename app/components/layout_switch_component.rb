# frozen_string_literal: true

class LayoutSwitchComponent < ViewComponentReflex::Component
  connect_stimulus_reflex

  reflex :set_layout do
    session[:layout] = element.dataset[:layout]
  end

  def button_class(layout)
    session[:layout] == layout ? 'primary' : 'outline-primary'
  end
end
