class EtsyAdvancedSearchPage 
  include PageObject

  expected_title 'Etsy'
  direct_url BASE_URL + 'search_advanced.php'

  text_field :search_box, :id => 'search-query'
  button :search, :id => 'search_submit'

  def search_for search_term
    self.search_box = search_term
    search
  end

end