module ApplicationHelper
  def display_notice
      content_tag(:p, notice, class: 'alert alert-success') if notice.present?
  end

  def display_alert
      content_tag(:p, alert, class: 'alert alert-danger') if alert.present?
  end
end
