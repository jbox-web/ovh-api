# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vps::AutomatedBackup
      def initialize(connection)
        @connection = connection
      end

      def attached_backup(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/automatedBackup/attachedBackup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def detach_backup(service_name:, vps_automated_backup_detach_backup_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_automated_backup_detach_backup_post is required' if vps_automated_backup_detach_backup_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/automatedBackup/detachBackup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_automated_backup_detach_backup_post
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/automatedBackup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def reschedule(service_name:, vps_automated_backup_reschedule_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_automated_backup_reschedule_post is required' if vps_automated_backup_reschedule_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/automatedBackup/reschedule'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_automated_backup_reschedule_post
        )
      end

      def restore(service_name:, vps_automated_backup_restore_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_automated_backup_restore_post is required' if vps_automated_backup_restore_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/automatedBackup/restore'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_automated_backup_restore_post
        )
      end

      def restore_points(service_name:, state:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'state is required' if state.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/automatedBackup/restorePoints'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'state' => state }
        )
      end
    end
  end
end
