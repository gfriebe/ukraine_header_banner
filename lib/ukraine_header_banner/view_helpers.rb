module UkraineHeaderBanner
  module ViewHelpers
    def show_ukraine_header_banner
      render partial: 'ukraine_header_banner/show' if UkraineHeaderBanner::CountryValidator.is_russian?(request.env['HTTP_X_REAL_IP'] || request.ip.to_s)
    end
  end
end