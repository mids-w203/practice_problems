module ApplicationHelper
    def markdown(text)
        options = [:hard_wrap, :autolink, :no_intra_emphasis, :fenced_code_blocks, tables: true]
        Markdown.new(text, *options).to_html.html_safe
    end
end
