# frozen_string_literal: true

module Ovh::Api
  module Api
    class OverTheBox::Ipv6
      def initialize(connection)
        @connection = connection
      end

      def bulk_update(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :PUT,
          '/overTheBox/{serviceName}/ipv6'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
