# frozen_string_literal: true

class LayoutSwitchComponent < ViewComponent::Base
  def initialize(layout: 'list')
    @layout = layout
  end
end
