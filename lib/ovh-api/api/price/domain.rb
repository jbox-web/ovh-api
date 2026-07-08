# frozen_string_literal: true

module Ovh::Api
  module Api
    class Price::Domain
      def initialize(connection)
        @connection = connection
      end

      def zone_option_option_name_get(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/domain/zone/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
