def full_title(page_title)
  base_title = "CS 232 Rails Development"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def fill_in_form
  fill_in "Name",         with: "Example User"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirmation", with: "foobar"
end