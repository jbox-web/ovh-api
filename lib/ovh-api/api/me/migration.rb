# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Migration
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/me/migration',
          type: nil,
          auth: []
        )
      end

      def migration_id_contract_contract_id_accept_post(contract_id:, migration_id:)
        raise ArgumentError, 'contract_id is required' if contract_id.nil?
        raise ArgumentError, 'migration_id is required' if migration_id.nil?

        @connection.call(
          :POST,
          '/me/migration/{migrationId}/contract/{contractId}/accept'
            .gsub('{contractId}', ERB::Util.url_encode(contract_id.to_s))
            .gsub('{migrationId}', ERB::Util.url_encode(migration_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def migration_id_contract_contract_id_agreement_get(contract_id:, migration_id:)
        raise ArgumentError, 'contract_id is required' if contract_id.nil?
        raise ArgumentError, 'migration_id is required' if migration_id.nil?

        @connection.call(
          :GET,
          '/me/migration/{migrationId}/contract/{contractId}/agreement'
            .gsub('{contractId}', ERB::Util.url_encode(contract_id.to_s))
            .gsub('{migrationId}', ERB::Util.url_encode(migration_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def migration_id_contract_contract_id_get(contract_id:, migration_id:)
        raise ArgumentError, 'contract_id is required' if contract_id.nil?
        raise ArgumentError, 'migration_id is required' if migration_id.nil?

        @connection.call(
          :GET,
          '/me/migration/{migrationId}/contract/{contractId}'
            .gsub('{contractId}', ERB::Util.url_encode(contract_id.to_s))
            .gsub('{migrationId}', ERB::Util.url_encode(migration_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def migration_id_contract_get(migration_id:)
        raise ArgumentError, 'migration_id is required' if migration_id.nil?

        @connection.call(
          :GET,
          '/me/migration/{migrationId}/contract'
            .gsub('{migrationId}', ERB::Util.url_encode(migration_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def migration_id_get(migration_id:)
        raise ArgumentError, 'migration_id is required' if migration_id.nil?

        @connection.call(
          :GET,
          '/me/migration/{migrationId}'
            .gsub('{migrationId}', ERB::Util.url_encode(migration_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
