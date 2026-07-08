# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::Blacklists
      def initialize(connection)
        @connection = connection
      end

      def delete(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/blacklists/{number}'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/blacklists/{number}'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, batch_id: nil, sms_outgoing_id: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/blacklists'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'batchID' => batch_id, 'smsOutgoingID' => sms_outgoing_id }
        )
      end
    end
  end
end
