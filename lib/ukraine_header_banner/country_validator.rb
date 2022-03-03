require 'maxmind/db'
require 'ipaddr'

module UkraineHeaderBanner
  class CountryValidator

    def self.is_russian?(ip)

      begin
        ip = IPAddr.new(ip)
      rescue ArgumentError
        return false
      end

      ip_country_code = IPLocator.get_country_code(ip)

      ip_country_code == "RU"

    end

    def self.get_country_code(ip)
      country_code = "none"

      # Using an Open-Source IP db released under an Apache2 license: https://github.com/geoacumen/geoacumen-country
      db = File.expand_path("../../../public/Geoacumen-Country.mmdb", __FILE__)
      reader = MaxMind::DB.new(db, mode: MaxMind::DB::MODE_MEMORY)

      begin
        record = reader.get(ip)
      rescue => error
        puts error.inspect
      end

      if !record.nil?
        country_code = record['country']['iso_code']
      end

      reader.close

      return country_code
    end

  end
end