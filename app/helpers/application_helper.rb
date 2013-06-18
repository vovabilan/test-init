module ApplicationHelper
  def render_signed_links
    if user_signed_in?
      render 'layouts/header_signout_links'
    else
      render 'layouts/header_signin_links'
    end
  end

  def render_flash
    ''.tap do |html|
      flash.each do |name, msg|
        html << content_tag(:div, msg, id: "flash_#{name}")
      end
    end.html_safe
  end
end
