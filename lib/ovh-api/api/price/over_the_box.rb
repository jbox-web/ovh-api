# frozen_string_literal: true

module Ovh::Api
  module Api
    class Price::OverTheBox
      def initialize(connection)
        @connection = connection
      end

      def offer_offer_name_get(offer_name:)
        raise ArgumentError, 'offer_name is required' if offer_name.nil?

        @connection.call(
          :GET,
          '/price/overTheBox/offer/{offerName}'
            .gsub('{offerName}', ERB::Util.url_encode(offer_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
