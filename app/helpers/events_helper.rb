module EventsHelper
  
  def markdown(text)                                                  # parameter as 'text' is imporatant
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                       no_intra_emphasis: true,
                                       fenced_code_blocks: true,
                                       disable_indented_code_blocks: true,
                                       autolink: true,
                                       tables: true,
                                       underline: true,
                                       highlight: true
                                      )
     return markdown.render(text).html_safe                           # Returning the Markdown format
  end

end
