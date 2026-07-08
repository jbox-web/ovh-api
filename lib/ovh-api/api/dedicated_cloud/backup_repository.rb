# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::BackupRepository
      def initialize(connection)
        @connection = connection
      end

      def get(repository_id:, service_name:)
        raise ArgumentError, 'repository_id is required' if repository_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/backupRepository/{repositoryId}'
            .gsub('{repositoryId}', ERB::Util.url_encode(repository_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/backupRepository'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
