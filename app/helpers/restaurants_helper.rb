module RestaurantsHelper
  def title
    "TITLE - This is the title variable in the restaurants helper"
  end
  
  def snippet(text)
    wordcount = 30
    text.split([0..(wordcount)], 2).map {|split| "<p>#{split}</p>" }.join("\n")
  end
end
