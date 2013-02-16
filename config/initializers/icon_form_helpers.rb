module ActionView
  module Helpers

#   module FormHelper
#     def button_with_icon(icon_name, button_text, options)
#       icon = "<i class='icon-#{icon_name.to_s}'></i>"
#       text = [icon, button_text].join ' '
#       button(text, options)
#     end
#   end

    class FormBuilder
      def button_with_icon icon_name, text, options = nil
        icon = "<i class='icon-#{icon_name.to_s}'></i>"
        button_text = [icon, text].join ' '
        button button_text.html_safe, options
      end
    end
  end
end
