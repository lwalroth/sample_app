module ApplicationHelper

  # Returns a base title (Ruby on Rails Tutorial Sample App) if no page title is defined.
  # and adds a vertical bar followed by the page title if one is defined
  def full_title(page_title)					# Method definition
    base_title = "Ruby on Rails Tutorial Sample App"		# Variable assignment
    if page_title.empty?					# Boolean test
      base_title						# Implicit return
    else
      "#{base_title} | #{page_title}"				# String interpolation
    end
  end
end
