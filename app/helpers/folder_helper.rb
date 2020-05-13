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
end
