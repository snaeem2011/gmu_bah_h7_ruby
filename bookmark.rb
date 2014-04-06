class Bookmark
  attr_accessor :url, :title
  LAST_VISITED = nil
  def visit! (LAST_VISITED)
    LAST_VISITED = Time.now.utc
  end
end