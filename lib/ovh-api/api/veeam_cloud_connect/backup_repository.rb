# frozen_string_literal: true

module Ovh::Api
  module Api
    class VeeamCloudConnect::BackupRepository
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/veeamCloudConnect/{serviceName}/backupRepository'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def delete(inventory_name:, service_name:)
        raise ArgumentError, 'inventory_name is required' if inventory_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/veeamCloudConnect/{serviceName}/backupRepository/{inventoryName}'
            .gsub('{inventoryName}', ERB::Util.url_encode(inventory_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(inventory_name:, service_name:)
        raise ArgumentError, 'inventory_name is required' if inventory_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/veeamCloudConnect/{serviceName}/backupRepository/{inventoryName}'
            .gsub('{inventoryName}', ERB::Util.url_encode(inventory_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/veeamCloudConnect/{serviceName}/backupRepository'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def upgrade_quota(inventory_name:, service_name:, body:)
        raise ArgumentError, 'inventory_name is required' if inventory_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/veeamCloudConnect/{serviceName}/backupRepository/{inventoryName}/upgradeQuota'
            .gsub('{inventoryName}', ERB::Util.url_encode(inventory_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
