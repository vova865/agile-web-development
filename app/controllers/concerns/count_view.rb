module CountView

  private

  def times_user_accessed_store
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
  end
end
