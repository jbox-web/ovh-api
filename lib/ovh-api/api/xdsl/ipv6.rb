# frozen_string_literal: true

module Ovh::Api
  module Api
    class Xdsl::Ipv6
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, xdsl_ipv6_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_ipv6_post is required' if xdsl_ipv6_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/ipv6'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_ipv6_post
        )
      end
    end
  end
end
