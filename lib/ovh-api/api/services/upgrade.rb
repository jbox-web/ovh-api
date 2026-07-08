# frozen_string_literal: true

module Ovh::Api
  module Api
    class Services::Upgrade
      def initialize(connection)
        @connection = connection
      end

      def execute(plan_code:, service_id:, services_operation_execution_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_operation_execution_request is required' if services_operation_execution_request.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/upgrade/{planCode}/execute'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_operation_execution_request
        )
      end

      def get(plan_code:, service_id:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/upgrade/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/upgrade'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def simulate(plan_code:, service_id:, services_operation_execution_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_operation_execution_request is required' if services_operation_execution_request.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/upgrade/{planCode}/simulate'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_operation_execution_request
        )
      end
    end
  end
end
