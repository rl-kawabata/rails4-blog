module ApplicationHelper
  def markdown2html(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
      autolink: true,
      space_after_headers: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      tables: true,
      hard_wrap: true,
      xhtml: true,
      lax_html_blocks: true,
      strikethrough: true)
    markdown.render(text).html_safe
  end
end
