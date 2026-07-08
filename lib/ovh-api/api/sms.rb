# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms
      def initialize(connection)
        @connection = connection
      end

      def estimate_post(sms_estimate_post_request:)
        raise ArgumentError, 'sms_estimate_post_request is required' if sms_estimate_post_request.nil?

        @connection.call(
          :POST,
          '/sms/estimate',
          type: nil,
          auth: [],
          body: sms_estimate_post_request
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/sms',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def ptts_get(ptt:)
        raise ArgumentError, 'ptt is required' if ptt.nil?

        @connection.call(
          :GET,
          '/sms/ptts',
          type: nil,
          auth: [],
          query: { 'ptt' => ptt }
        )
      end

      def rates_destinations_get(country:, billing_country: nil)
        raise ArgumentError, 'country is required' if country.nil?

        @connection.call(
          :GET,
          '/sms/rates/destinations',
          type: nil,
          auth: [],
          query: { 'billingCountry' => billing_country, 'country' => country }
        )
      end

      def rates_packs_get(country:, billing_country: nil)
        raise ArgumentError, 'country is required' if country.nil?

        @connection.call(
          :GET,
          '/sms/rates/packs',
          type: nil,
          auth: [],
          query: { 'billingCountry' => billing_country, 'country' => country }
        )
      end

      def service_name_exceptions_get(receiver:, service_name:)
        raise ArgumentError, 'receiver is required' if receiver.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/exceptions'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'receiver' => receiver }
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, sms_account:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_account is required' if sms_account.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_account
        )
      end

      def service_name_see_offers_get(country_currency_price:, country_destination:, quantity:, service_name:)
        raise ArgumentError, 'country_currency_price is required' if country_currency_price.nil?
        raise ArgumentError, 'country_destination is required' if country_destination.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/seeOffers'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'countryCurrencyPrice' => country_currency_price, 'countryDestination' => country_destination, 'quantity' => quantity }
        )
      end

      def service_name_senders_available_for_validation_get(service_name:, referer: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/sendersAvailableForValidation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'referer' => referer }
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_put(service_name:, services_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_smpp_allowed_ips_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/smpp/allowedIPs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_smpp_allowed_ips_put(service_name:, sms_allowed_ips:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_allowed_ips is required' if sms_allowed_ips.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/smpp/allowedIPs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_allowed_ips
        )
      end

      def service_name_smpp_password_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/smpp/password'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_smpp_settings_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/smpp/settings'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_transfer_credits_post(service_name:, sms_service_name_transfer_credits_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_transfer_credits_post_request is required' if sms_service_name_transfer_credits_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/transferCredits'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_transfer_credits_post_request
        )
      end
    end
  end
end
