module ApplicationHelper
  
  def title
    base_title = "HandsOffMyTips.org.uk - give tips & service charge to staff!"
  end
  
  def nav # this is how to show nav on pages with access to @pages
    @pages ? index_nav : ""
  end
  
  def index_nav
    render 'pages/pages'
  end
end
