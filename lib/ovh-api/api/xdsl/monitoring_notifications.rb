# frozen_string_literal: true

module Ovh::Api
  module Api
    class Xdsl::MonitoringNotifications
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, xdsl_monitoring_notifications_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_monitoring_notifications_post is required' if xdsl_monitoring_notifications_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/monitoringNotifications'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_monitoring_notifications_post
        )
      end

      def delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/xdsl/{serviceName}/monitoringNotifications/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/monitoringNotifications/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/monitoringNotifications'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(id:, service_name:, xdsl_monitoring_notification:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_monitoring_notification is required' if xdsl_monitoring_notification.nil?

        @connection.call(
          :PUT,
          '/xdsl/{serviceName}/monitoringNotifications/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_monitoring_notification
        )
      end
    end
  end
end
