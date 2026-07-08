# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vps::Veeam
      def initialize(connection)
        @connection = connection
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/veeam'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def restore_points(service_name:, creation_time: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/veeam/restorePoints'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationTime' => creation_time }
        )
      end

      def restore_points_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/veeam/restorePoints/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def restore_points_restore(id:, service_name:, vps_veeam_restore_points_restore_post:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_veeam_restore_points_restore_post is required' if vps_veeam_restore_points_restore_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/veeam/restorePoints/{id}/restore'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_veeam_restore_points_restore_post
        )
      end

      def restored_backup(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/veeam/restoredBackup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def restored_backup_delete(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vps/{serviceName}/veeam/restoredBackup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
