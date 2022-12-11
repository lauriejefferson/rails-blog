module ApplicationHelper
    def markdown(text)
        extensions = {
            autolink: true, 
            no_intra_emphasis: true, 
            fenced_code_blocks: true,
            space_after_headers: true
        }

        render_options = {
            hard_wrap: true,
            escape_html: true 
        }

        renderer = Redcarpet::Render::HTML.new(render_options)
        Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe

    end
end
