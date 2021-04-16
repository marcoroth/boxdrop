# frozen_string_literal: true

module LayoutHelper
  def layout_button(layout, current_layout, icon)
    active = layout == current_layout

    tag.button(
      tag.i(class: "fa fa-#{icon}"),
      type: 'button',
      data: { reflex: 'click->LayoutReflex#set_layout', layout: layout },
      class: class_names('btn', 'btn-primary': active, 'btn-outline-primary': !active)
    )
  end
end
