module ApplicationHelper

  def app_version
    "v#{APP_VERSION}".html_safe
  end

end
