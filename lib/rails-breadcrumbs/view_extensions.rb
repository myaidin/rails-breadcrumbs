module RailsBreadcrumbs
  module Helper
    def bootstrap_breadcrumbs(separator = "&rsaquo;")
      content_tag :ul, :class => "breadcrumb" do
        @breadcrumbs.map do |txt, path|
          if (path.blank? || current_page?(path)) && ([txt,path] == @breadcrumbs.last)
            concat content_tag(:li, h(txt), :class => "active")
          else
            li = content_tag :li do
              link_to_unless((path.blank? || current_page?(path)), h(txt), path).to_s +
                  content_tag(:span, separator, { :class => "divider" }, false).to_s
            end.to_s
            concat li
          end
        end.join().html_safe
      end
    end

    def breadcrumbs(separator = "&rsaquo;")
      @breadcrumbs.map do |txt, path|
        link_to_unless (path.blank? || current_page?(path)), h(txt), path
      end.join(" #{separator} ").html_safe
    end
  end
end
