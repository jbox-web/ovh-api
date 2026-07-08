# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::PublicRoutingPriority
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, vrack_service_name_public_routing_priority_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_service_name_public_routing_priority_post_request is required' if vrack_service_name_public_routing_priority_post_request.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/publicRoutingPriority'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vrack_service_name_public_routing_priority_post_request
        )
      end

      def delete(priority_id:, service_name:)
        raise ArgumentError, 'priority_id is required' if priority_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/publicRoutingPriority/{priorityId}'
            .gsub('{priorityId}', ERB::Util.url_encode(priority_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(priority_id:, service_name:)
        raise ArgumentError, 'priority_id is required' if priority_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/publicRoutingPriority/{priorityId}'
            .gsub('{priorityId}', ERB::Util.url_encode(priority_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/publicRoutingPriority'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(priority_id:, service_name:, vrack_public_routing_priority:)
        raise ArgumentError, 'priority_id is required' if priority_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_public_routing_priority is required' if vrack_public_routing_priority.nil?

        @connection.call(
          :PUT,
          '/vrack/{serviceName}/publicRoutingPriority/{priorityId}'
            .gsub('{priorityId}', ERB::Util.url_encode(priority_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vrack_public_routing_priority
        )
      end
    end
  end
end
