module PagesHelper

  def convert_url(str)
    str.gsub(URI.regexp, '<a href="\\0">\\0</a>')
  end
end
