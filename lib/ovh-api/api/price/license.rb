# frozen_string_literal: true

module Ovh::Api
  module Api
    class Price::License
      def initialize(connection)
        @connection = connection
      end

      def office_office_name_get(office_name:)
        raise ArgumentError, 'office_name is required' if office_name.nil?

        @connection.call(
          :GET,
          '/price/license/office/{officeName}'
            .gsub('{officeName}', ERB::Util.url_encode(office_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
