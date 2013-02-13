module BooksHelper
  def form_control_formatter label_text, control_text
    html = <<-HTML
    <div class='control-group'>
      <div class='control-label'>
        #{label_text}
      </div>
      <div class='controls'>
        #{control_text}
      </div>
    </div>
    HTML
    html.html_safe
  end
end
