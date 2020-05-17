module FolderHelper
  def get_items_of_folder(folder)
    elements = []

    loop do
      break if folder.nil?
      elements << folder
      folder = folder.parent
    end

    elements.reverse
  end

  def grid_item_classes(layout)
    if layout == 'grid-small'
      'col-6 col-sm-4 col-md-3 col-lg-2'
    elsif layout == 'grid'
      'col-12 col-sm-6 col-md-4'
    else
      'col'
    end
  end
end
