# frozen_string_literal: true

module Ovh::Api
  module Api
    class OverTheBox::RemoteAccesses
      def initialize(connection)
        @connection = connection
      end

      def authorize(remote_access_id:, service_name:)
        raise ArgumentError, 'remote_access_id is required' if remote_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/overTheBox/{serviceName}/remoteAccesses/{remoteAccessId}/authorize'
            .gsub('{remoteAccessId}', ERB::Util.url_encode(remote_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def create(service_name:, over_the_box_service_name_remote_accesses_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'over_the_box_service_name_remote_accesses_post_request is required' if over_the_box_service_name_remote_accesses_post_request.nil?

        @connection.call(
          :POST,
          '/overTheBox/{serviceName}/remoteAccesses'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: over_the_box_service_name_remote_accesses_post_request
        )
      end

      def delete(remote_access_id:, service_name:)
        raise ArgumentError, 'remote_access_id is required' if remote_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/overTheBox/{serviceName}/remoteAccesses/{remoteAccessId}'
            .gsub('{remoteAccessId}', ERB::Util.url_encode(remote_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(remote_access_id:, service_name:)
        raise ArgumentError, 'remote_access_id is required' if remote_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}/remoteAccesses/{remoteAccessId}'
            .gsub('{remoteAccessId}', ERB::Util.url_encode(remote_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}/remoteAccesses'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
