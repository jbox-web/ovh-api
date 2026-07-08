# frozen_string_literal: true

module Ovh::Api
  module Api
    class OverTheBox::Backups
      def initialize(connection)
        @connection = connection
      end

      def delete(backup_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/overTheBox/{serviceName}/backups/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(backup_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}/backups/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}/backups'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
