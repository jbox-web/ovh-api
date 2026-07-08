# frozen_string_literal: true

module Ovh::Api
  module Api
    class Nutanix::Vrack
      def initialize(connection)
        @connection = connection
      end

      def bulk_update(service_name:, nutanix_vrack:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'nutanix_vrack is required' if nutanix_vrack.nil?

        @connection.call(
          :PUT,
          '/nutanix/{serviceName}/vrack'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: nutanix_vrack
        )
      end
    end
  end
end
