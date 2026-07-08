# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Directories
      def initialize(connection)
        @connection = connection
      end

      def available_zip_codes_get(country:, number:)
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'number is required' if number.nil?

        @connection.call(
          :GET,
          '/telephony/directories/availableZipCodes',
          type: nil,
          auth: [],
          query: { 'country' => country, 'number' => number }
        )
      end

      def cities_get(country:, zip_code:)
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'zip_code is required' if zip_code.nil?

        @connection.call(
          :GET,
          '/telephony/directories/cities',
          type: nil,
          auth: [],
          query: { 'country' => country, 'zipCode' => zip_code }
        )
      end
    end
  end
end
