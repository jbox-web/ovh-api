# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::EasyHunting
      def initialize(connection)
        @connection = connection
      end

      def get(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_banner_access(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/bannerAccess'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_banner_access_delete(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/bannerAccess'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_banner_access_post(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/bannerAccess'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_calls(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/calls'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_calls_eavesdrop(agent_id:, billing_account:, id:, service_name:, body:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/calls/{id}/eavesdrop'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def hunting_agent_calls_get(agent_id:, billing_account:, id:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/calls/{id}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_calls_hangup(agent_id:, billing_account:, id:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/calls/{id}/hangup'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_calls_hold(agent_id:, billing_account:, id:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/calls/{id}/hold'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_calls_intercept(agent_id:, billing_account:, id:, service_name:, body:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/calls/{id}/intercept'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def hunting_agent_calls_transfer(agent_id:, billing_account:, id:, service_name:, body:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/calls/{id}/transfer'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def hunting_agent_calls_whisper(agent_id:, billing_account:, id:, service_name:, telephony_billing_account_easy_hunting_service_name_hunting_ag_h8eac739f:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_easy_hunting_service_name_hunting_ag_h8eac739f is required' if telephony_billing_account_easy_hunting_service_name_hunting_ag_h8eac739f.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/calls/{id}/whisper'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_hunting_ag_h8eac739f
        )
      end

      def hunting_agent_delete(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_event_token(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/eventToken'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_event_token_delete(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/eventToken'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_event_token_post(agent_id:, billing_account:, service_name:, body:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/eventToken'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def hunting_agent_get(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_live_status(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/liveStatus'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_post(billing_account:, service_name:, telephony_billing_account_easy_hunting_service_name_hunting_ag_h06c5fb39:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_easy_hunting_service_name_hunting_ag_h06c5fb39 is required' if telephony_billing_account_easy_hunting_service_name_hunting_ag_h06c5fb39.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_hunting_ag_h06c5fb39
        )
      end

      def hunting_agent_put(agent_id:, billing_account:, service_name:, telephony_ovh_pabx_hunting_agent:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_hunting_agent is required' if telephony_ovh_pabx_hunting_agent.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_hunting_agent
        )
      end

      def hunting_agent_queue(agent_id:, billing_account:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/queue'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_queue_delete(agent_id:, billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/queue/{queueId}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_queue_get(agent_id:, billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/queue/{queueId}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_queue_live_status(agent_id:, billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/queue/{queueId}/liveStatus'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_agent_queue_post(agent_id:, billing_account:, service_name:, telephony_billing_account_easy_hunting_service_name_hunting_ag_h1354d334:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_easy_hunting_service_name_hunting_ag_h1354d334 is required' if telephony_billing_account_easy_hunting_service_name_hunting_ag_h1354d334.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/queue'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_hunting_ag_h1354d334
        )
      end

      def hunting_agent_queue_put(agent_id:, billing_account:, queue_id:, service_name:, telephony_ovh_pabx_hunting_agent_queue:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_hunting_agent_queue is required' if telephony_ovh_pabx_hunting_agent_queue.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/agent/{agentId}/queue/{queueId}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_hunting_agent_queue
        )
      end

      def hunting_custom_status(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/customStatus'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_custom_status_delete(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/customStatus/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_custom_status_get(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/customStatus/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_custom_status_post(billing_account:, service_name:, telephony_billing_account_easy_hunting_service_name_hunting_cu_h8d70d737:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_easy_hunting_service_name_hunting_cu_h8d70d737 is required' if telephony_billing_account_easy_hunting_service_name_hunting_cu_h8d70d737.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/customStatus'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_hunting_cu_h8d70d737
        )
      end

      def hunting_event_token(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/eventToken'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_event_token_delete(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/eventToken'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_event_token_post(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/eventToken'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def hunting_put(billing_account:, service_name:, telephony_ovh_pabx_hunting:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_hunting is required' if telephony_ovh_pabx_hunting.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_hunting
        )
      end

      def hunting_queue(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_agent(billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/agent'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_agent_delete(agent_id:, billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/agent/{agentId}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_agent_get(agent_id:, billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/agent/{agentId}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_agent_live_status(agent_id:, billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/agent/{agentId}/liveStatus'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_agent_post(billing_account:, service_name:, queue_id:, telephony_billing_account_easy_hunting_service_name_hunting_ag_h1354d334:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'telephony_billing_account_easy_hunting_service_name_hunting_ag_h1354d334 is required' if telephony_billing_account_easy_hunting_service_name_hunting_ag_h1354d334.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/agent'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_hunting_ag_h1354d334
        )
      end

      def hunting_queue_agent_put(agent_id:, billing_account:, queue_id:, service_name:, telephony_ovh_pabx_hunting_agent_queue:)
        raise ArgumentError, 'agent_id is required' if agent_id.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_hunting_agent_queue is required' if telephony_ovh_pabx_hunting_agent_queue.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/agent/{agentId}'
            .gsub('{agentId}', ERB::Util.url_encode(agent_id.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_hunting_agent_queue
        )
      end

      def hunting_queue_delete(billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_get(billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_live_calls(billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/liveCalls'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_live_calls_eavesdrop(billing_account:, id:, queue_id:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/eavesdrop'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def hunting_queue_live_calls_get(billing_account:, id:, queue_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_live_calls_hangup(billing_account:, id:, queue_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/hangup'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_live_calls_hold(billing_account:, id:, queue_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/hold'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_live_calls_intercept(billing_account:, id:, queue_id:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/intercept'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def hunting_queue_live_calls_transfer(billing_account:, id:, queue_id:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/transfer'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def hunting_queue_live_calls_whisper(billing_account:, id:, queue_id:, service_name:, telephony_billing_account_easy_hunting_service_name_hunting_ag_h8eac739f:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_easy_hunting_service_name_hunting_ag_h8eac739f is required' if telephony_billing_account_easy_hunting_service_name_hunting_ag_h8eac739f.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/whisper'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_hunting_ag_h8eac739f
        )
      end

      def hunting_queue_live_statistics(billing_account:, queue_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}/liveStatistics'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hunting_queue_post(billing_account:, service_name:, telephony_billing_account_easy_hunting_service_name_hunting_qu_hd5d4191f:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_easy_hunting_service_name_hunting_qu_hd5d4191f is required' if telephony_billing_account_easy_hunting_service_name_hunting_qu_hd5d4191f.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_hunting_qu_hd5d4191f
        )
      end

      def hunting_queue_put(billing_account:, queue_id:, service_name:, telephony_ovh_pabx_hunting_queue:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'queue_id is required' if queue_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_hunting_queue is required' if telephony_ovh_pabx_hunting_queue.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/hunting/queue/{queueId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{queueId}', ERB::Util.url_encode(queue_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_hunting_queue
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def records(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/records'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def records_delete(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/records/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def records_get(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/records/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def screen_list_conditions(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/screenListConditions'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def screen_list_conditions_conditions(billing_account:, service_name:, screen_list_type: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/screenListConditions/conditions'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'screenListType' => screen_list_type }
        )
      end

      def screen_list_conditions_conditions_delete(billing_account:, condition_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/screenListConditions/conditions/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def screen_list_conditions_conditions_get(billing_account:, condition_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/screenListConditions/conditions/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def screen_list_conditions_conditions_post(billing_account:, service_name:, telephony_billing_account_easy_hunting_service_name_screen_lis_ha858d1b1:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_easy_hunting_service_name_screen_lis_ha858d1b1 is required' if telephony_billing_account_easy_hunting_service_name_screen_lis_ha858d1b1.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/screenListConditions/conditions'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_screen_lis_ha858d1b1
        )
      end

      def screen_list_conditions_conditions_put(billing_account:, condition_id:, service_name:, telephony_easy_hunting_screen_lists_conditions:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_easy_hunting_screen_lists_conditions is required' if telephony_easy_hunting_screen_lists_conditions.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/screenListConditions/conditions/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_easy_hunting_screen_lists_conditions
        )
      end

      def screen_list_conditions_put(billing_account:, service_name:, telephony_easy_hunting_screen_lists_conditions_settings:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_easy_hunting_screen_lists_conditions_settings is required' if telephony_easy_hunting_screen_lists_conditions_settings.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/screenListConditions'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_easy_hunting_screen_lists_conditions_settings
        )
      end

      def sound(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/sound'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sound_delete(billing_account:, service_name:, sound_id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sound_id is required' if sound_id.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/sound/{soundId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{soundId}', ERB::Util.url_encode(sound_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def sound_get(billing_account:, service_name:, sound_id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sound_id is required' if sound_id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/sound/{soundId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{soundId}', ERB::Util.url_encode(sound_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def sound_upload(billing_account:, service_name:, telephony_billing_account_easy_hunting_service_name_sound_uplo_hd1064eff: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/soundUpload'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_sound_uplo_hd1064eff
        )
      end

      def time_conditions(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/timeConditions'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def time_conditions_conditions(billing_account:, service_name:, policy: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/timeConditions/conditions'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'policy' => policy }
        )
      end

      def time_conditions_conditions_delete(billing_account:, condition_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/timeConditions/conditions/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def time_conditions_conditions_get(billing_account:, condition_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/timeConditions/conditions/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def time_conditions_conditions_post(billing_account:, service_name:, telephony_billing_account_easy_hunting_service_name_time_condi_hb21ab466:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_easy_hunting_service_name_time_condi_hb21ab466 is required' if telephony_billing_account_easy_hunting_service_name_time_condi_hb21ab466.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/timeConditions/conditions'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_time_condi_hb21ab466
        )
      end

      def time_conditions_conditions_put(billing_account:, condition_id:, service_name:, telephony_easy_hunting_time_conditions:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_easy_hunting_time_conditions is required' if telephony_easy_hunting_time_conditions.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/timeConditions/conditions/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_easy_hunting_time_conditions
        )
      end

      def time_conditions_put(billing_account:, service_name:, telephony_easy_hunting_time_conditions_settings:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_easy_hunting_time_conditions_settings is required' if telephony_easy_hunting_time_conditions_settings.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}/timeConditions'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_easy_hunting_time_conditions_settings
        )
      end

      def update(billing_account:, service_name:, telephony_easy_hunting:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_easy_hunting is required' if telephony_easy_hunting.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/easyHunting/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_easy_hunting
        )
      end
    end
  end
end
