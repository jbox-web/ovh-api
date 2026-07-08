# frozen_string_literal: true

module Ovh::Api
  module Api
    class Price::Xdsl
      def initialize(connection)
        @connection = connection
      end

      def address_move_fee_option_get(option:)
        raise ArgumentError, 'option is required' if option.nil?

        @connection.call(
          :GET,
          '/price/xdsl/addressMove/fee/{option}'
            .gsub('{option}', ERB::Util.url_encode(option.to_s)),
          type: nil,
          auth: []
        )
      end

      def installation_offer_get(offer:)
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/price/xdsl/installation/{offer}'
            .gsub('{offer}', ERB::Util.url_encode(offer.to_s)),
          type: nil,
          auth: []
        )
      end

      def offers_offers_name_get(offers_name:)
        raise ArgumentError, 'offers_name is required' if offers_name.nil?

        @connection.call(
          :GET,
          '/price/xdsl/offers/{offersName}'
            .gsub('{offersName}', ERB::Util.url_encode(offers_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def options_installation_option_get(option:)
        raise ArgumentError, 'option is required' if option.nil?

        @connection.call(
          :GET,
          '/price/xdsl/options/installation/{option}'
            .gsub('{option}', ERB::Util.url_encode(option.to_s)),
          type: nil,
          auth: []
        )
      end

      def options_ipv4_ip_range_get(ip_range:)
        raise ArgumentError, 'ip_range is required' if ip_range.nil?

        @connection.call(
          :GET,
          '/price/xdsl/options/ipv4/{ipRange}'
            .gsub('{ipRange}', ERB::Util.url_encode(ip_range.to_s)),
          type: nil,
          auth: []
        )
      end

      def options_line_line_action_get(line_action:)
        raise ArgumentError, 'line_action is required' if line_action.nil?

        @connection.call(
          :GET,
          '/price/xdsl/options/line/{lineAction}'
            .gsub('{lineAction}', ERB::Util.url_encode(line_action.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
