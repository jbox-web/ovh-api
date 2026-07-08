# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Number
      def initialize(connection)
        @connection = connection
      end

      def cancel_convert_to_line(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/number/{serviceName}/cancelConvertToLine'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def change_feature_type(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/number/{serviceName}/changeFeatureType'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def convert_to_line(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/number/{serviceName}/convertToLine'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def convert_to_line_available_offers(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/number/{serviceName}/convertToLineAvailableOffers'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def detailed_zones_get(country:, axiom: nil)
        raise ArgumentError, 'country is required' if country.nil?

        @connection.call(
          :GET,
          '/telephony/number/detailedZones',
          type: nil,
          auth: [],
          query: { 'axiom' => axiom, 'country' => country }
        )
      end

      def get(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/number/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/number'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def ranges_get(country:)
        raise ArgumentError, 'country is required' if country.nil?

        @connection.call(
          :GET,
          '/telephony/number/ranges',
          type: nil,
          auth: [],
          query: { 'country' => country }
        )
      end

      def specific_numbers_get(country:, type:, range: nil, zone: nil)
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/telephony/number/specificNumbers',
          type: nil,
          auth: [],
          query: { 'country' => country, 'range' => range, 'type' => type, 'zone' => zone }
        )
      end

      def update(billing_account:, service_name:, telephony_number:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_number is required' if telephony_number.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/number/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_number
        )
      end

      def zones_get(country:, axiom: nil)
        raise ArgumentError, 'country is required' if country.nil?

        @connection.call(
          :GET,
          '/telephony/number/zones',
          type: nil,
          auth: [],
          query: { 'axiom' => axiom, 'country' => country }
        )
      end
    end
  end
end
