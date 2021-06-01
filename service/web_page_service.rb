class WebPageService

  def check_redirect(web_page)
    {:status => web_page.status, :location => web_page.location}
  end

  def get_value_by_css_selector(web_page, selectors)
    results = {}
    raise ArgumentError.new("CSSセレクタが未設定です。") if selectors.nil? || selectors.empty?
    for selector in selectors do
      elements = web_page.select(selector)
      results[selector.name] = elements
    end
    results
  end
  
end