# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Cloud
      def initialize(connection)
        @connection = connection
      end

      def project_get
        @connection.call(
          :GET,
          '/order/cloud/project',
          type: nil,
          auth: []
        )
      end

      def project_service_name_credit_get(amount:, service_name:)
        raise ArgumentError, 'amount is required' if amount.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cloud/project/{serviceName}/credit'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'amount' => amount }
        )
      end

      def project_service_name_credit_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/cloud/project/{serviceName}/credit'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def project_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cloud/project/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
