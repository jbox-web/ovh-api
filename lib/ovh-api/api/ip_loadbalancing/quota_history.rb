# frozen_string_literal: true

module Ovh::Api
  module Api
    class IpLoadbalancing::QuotaHistory
      def initialize(connection)
        @connection = connection
      end

      def get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/quotaHistory/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, historized_date_from: nil, historized_date_to: nil, zone: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/quotaHistory'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'historizedDate.from' => historized_date_from, 'historizedDate.to' => historized_date_to, 'zone' => zone }
        )
      end
    end
  end
end
