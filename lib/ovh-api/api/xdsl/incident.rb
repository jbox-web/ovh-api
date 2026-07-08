# frozen_string_literal: true

module Ovh::Api
  module Api
    class Xdsl::Incident
      def initialize(connection)
        @connection = connection
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/incident'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
