module PagesHelper
  def convert_url(str)
    str.gsub(URI.regexp, '<a href="\\0">\\0</a>')
  end
end

#pass in a string, run convert_url on string and sub in regexp.
