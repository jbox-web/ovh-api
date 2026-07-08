# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Logs
      def initialize(connection)
        @connection = connection
      end

      def audit_get
        @connection.call(
          :GET,
          '/me/logs/audit',
          type: nil,
          auth: []
        )
      end

      def audit_log_kind_get
        @connection.call(
          :GET,
          '/me/logs/audit/log/kind',
          type: nil,
          auth: []
        )
      end

      def audit_log_kind_name_get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/me/logs/audit/log/kind/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def audit_log_subscription_get(kind: nil)
        @connection.call(
          :GET,
          '/me/logs/audit/log/subscription',
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def audit_log_subscription_post(dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/me/logs/audit/log/subscription',
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def audit_log_subscription_subscription_id_delete(subscription_id:)
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/me/logs/audit/log/subscription/{subscriptionId}'
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def audit_log_subscription_subscription_id_get(subscription_id:)
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/me/logs/audit/log/subscription/{subscriptionId}'
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def audit_log_url_post(dbaas_logs_log_url_creation:)
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/me/logs/audit/log/url',
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end
    end
  end
end
