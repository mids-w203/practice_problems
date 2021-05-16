module ApplicationHelper
    def markdown(text)
        # options = {:hard_wrap, :autolink, :no_intra_emphasis, :fenced_code_blocks, tables: true}
        Kramdown::Document.new(text, {
            auto_ids: false,
            hard_wrap: true
        }).to_html.html_safe
    end

    def avatar_url_for(email, opts = {})
        size = opts[:size || 50]

        hash = Digest::MD5.hexdigest(email.downcase)
        "https://secure.gravatar.com/avatar/#{hash}.png?s=#{size}"
    end
end
