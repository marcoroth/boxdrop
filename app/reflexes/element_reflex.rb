class ElementReflex < ApplicationReflex

  def unselect_all
    session[:selected_elements] = []
  end

  def bulk_delete
    if session[:selected_elements]
      session[:selected_elements].each(&:delete)
      session[:selected_elements] = []
    end
  end

end
