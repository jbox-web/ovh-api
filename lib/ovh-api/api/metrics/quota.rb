# frozen_string_literal: true

module Ovh::Api
  module Api
    class Metrics::Quota
      def initialize(connection)
        @connection = connection
      end

      def bulk_update(service_name:, metrics_quota_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'metrics_quota_update is required' if metrics_quota_update.nil?

        @connection.call(
          :PUT,
          '/metrics/{serviceName}/quota'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: metrics_quota_update
        )
      end
    end
  end
end
