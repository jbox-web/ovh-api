# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Incident
      def initialize(connection)
        @connection = connection
      end

      def sbg_migrate_services_get
        @connection.call(
          :GET,
          '/me/incident/sbg/migrateServices',
          type: nil,
          auth: []
        )
      end

      def sbg_migrate_services_post(me_incident_migrate_services:)
        raise ArgumentError, 'me_incident_migrate_services is required' if me_incident_migrate_services.nil?

        @connection.call(
          :POST,
          '/me/incident/sbg/migrateServices',
          type: nil,
          auth: [],
          body: me_incident_migrate_services
        )
      end
    end
  end
end
