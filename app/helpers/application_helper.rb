module ApplicationHelper
  def page_title(title = nil)
    @page_title = title if title
    @page_title || "Music Tabs"
  end
end
