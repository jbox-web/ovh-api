# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::CarrierSip
      def initialize(connection)
        @connection = connection
      end

      def cdrs(billing_account:, service_name:, month: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/cdrs'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'month' => month }
        )
      end

      def cluster_details(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/clusterDetails'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def endpoints(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/endpoints'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def endpoints_get(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/endpoints/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}'
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
          '/telephony/{billingAccount}/carrierSip'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def settings(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/settings'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def settings_put(billing_account:, service_name:, telephony_carrier_sip_details:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_carrier_sip_details is required' if telephony_carrier_sip_details.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/settings'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_carrier_sip_details
        )
      end

      def vno(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/vno'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def vno_get(billing_account:, contract_reference:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'contract_reference is required' if contract_reference.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/vno/{contractReference}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{contractReference}', ERB::Util.url_encode(contract_reference.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def vno_ranges(billing_account:, contract_reference:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'contract_reference is required' if contract_reference.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/vno/{contractReference}/ranges'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{contractReference}', ERB::Util.url_encode(contract_reference.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def vno_ranges_get(billing_account:, contract_reference:, prefix:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'contract_reference is required' if contract_reference.nil?
        raise ArgumentError, 'prefix is required' if prefix.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/vno/{contractReference}/ranges/{prefix}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{contractReference}', ERB::Util.url_encode(contract_reference.to_s))
            .gsub('{prefix}', ERB::Util.url_encode(prefix.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def vno_ranges_put(billing_account:, contract_reference:, prefix:, service_name:, telephony_carrier_sip_vno_range:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'contract_reference is required' if contract_reference.nil?
        raise ArgumentError, 'prefix is required' if prefix.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_carrier_sip_vno_range is required' if telephony_carrier_sip_vno_range.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/carrierSip/{serviceName}/vno/{contractReference}/ranges/{prefix}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{contractReference}', ERB::Util.url_encode(contract_reference.to_s))
            .gsub('{prefix}', ERB::Util.url_encode(prefix.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_carrier_sip_vno_range
        )
      end
    end
  end
end
