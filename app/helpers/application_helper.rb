module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end

  def admin_check
    User.find(session[:user_id]).admin if session[:user_id]
  end
end
