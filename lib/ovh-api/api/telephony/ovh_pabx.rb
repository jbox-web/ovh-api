# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::OvhPabx
      def initialize(connection)
        @connection = connection
      end

      def dialplan(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_delete(billing_account:, dialplan_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension(billing_account:, dialplan_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_condition_screen_list(billing_account:, dialplan_id:, extension_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/conditionScreenList'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_condition_screen_list_delete(billing_account:, condition_id:, dialplan_id:, extension_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/conditionScreenList/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_condition_screen_list_get(billing_account:, condition_id:, dialplan_id:, extension_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/conditionScreenList/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_condition_screen_list_post(billing_account:, dialplan_id:, extension_id:, service_name:, telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_haf50eca9: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/conditionScreenList'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_haf50eca9
        )
      end

      def dialplan_extension_condition_time(billing_account:, dialplan_id:, extension_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/conditionTime'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_condition_time_delete(billing_account:, condition_id:, dialplan_id:, extension_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/conditionTime/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_condition_time_get(billing_account:, condition_id:, dialplan_id:, extension_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/conditionTime/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_condition_time_post(billing_account:, dialplan_id:, extension_id:, service_name:, telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_ha5727af6:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_ha5727af6 is required' if telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_ha5727af6.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/conditionTime'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_ha5727af6
        )
      end

      def dialplan_extension_condition_time_put(billing_account:, condition_id:, dialplan_id:, extension_id:, service_name:, telephony_ovh_pabx_dialplan_extension_condition_time:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'condition_id is required' if condition_id.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_dialplan_extension_condition_time is required' if telephony_ovh_pabx_dialplan_extension_condition_time.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/conditionTime/{conditionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{conditionId}', ERB::Util.url_encode(condition_id.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_dialplan_extension_condition_time
        )
      end

      def dialplan_extension_delete(billing_account:, dialplan_id:, extension_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_get(billing_account:, dialplan_id:, extension_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_post(billing_account:, dialplan_id:, service_name:, telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_h5a88c52e:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_h5a88c52e is required' if telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_h5a88c52e.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_h5a88c52e
        )
      end

      def dialplan_extension_put(billing_account:, dialplan_id:, extension_id:, service_name:, telephony_ovh_pabx_dialplan_extension:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_dialplan_extension is required' if telephony_ovh_pabx_dialplan_extension.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_dialplan_extension
        )
      end

      def dialplan_extension_rule(billing_account:, dialplan_id:, extension_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/rule'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_rule_delete(billing_account:, dialplan_id:, extension_id:, rule_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/rule/{ruleId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_rule_get(billing_account:, dialplan_id:, extension_id:, rule_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/rule/{ruleId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_extension_rule_post(billing_account:, dialplan_id:, extension_id:, service_name:, telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_he4982b7a:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_he4982b7a is required' if telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_he4982b7a.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/rule'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_ovh_pabx_service_name_dialplan_dialp_he4982b7a
        )
      end

      def dialplan_extension_rule_put(billing_account:, dialplan_id:, extension_id:, rule_id:, service_name:, telephony_ovh_pabx_dialplan_extension_rule:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'extension_id is required' if extension_id.nil?
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_dialplan_extension_rule is required' if telephony_ovh_pabx_dialplan_extension_rule.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}/extension/{extensionId}/rule/{ruleId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{extensionId}', ERB::Util.url_encode(extension_id.to_s))
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_dialplan_extension_rule
        )
      end

      def dialplan_get(billing_account:, dialplan_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dialplan_post(billing_account:, service_name:, telephony_billing_account_ovh_pabx_service_name_dialplan_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_ovh_pabx_service_name_dialplan_post_request is required' if telephony_billing_account_ovh_pabx_service_name_dialplan_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_ovh_pabx_service_name_dialplan_post_request
        )
      end

      def dialplan_put(billing_account:, dialplan_id:, service_name:, telephony_ovh_pabx_dialplan:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'dialplan_id is required' if dialplan_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_dialplan is required' if telephony_ovh_pabx_dialplan.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/dialplan/{dialplanId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{dialplanId}', ERB::Util.url_encode(dialplan_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_dialplan
        )
      end

      def get(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/bannerAccess'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/bannerAccess'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/bannerAccess'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/calls'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/calls/{id}/eavesdrop'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/calls/{id}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/calls/{id}/hangup'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/calls/{id}/hold'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/calls/{id}/intercept'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/calls/{id}/transfer'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/calls/{id}/whisper'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/eventToken'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/eventToken'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/eventToken'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/liveStatus'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/queue'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/queue/{queueId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/queue/{queueId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/queue/{queueId}/liveStatus'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/queue'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/agent/{agentId}/queue/{queueId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/customStatus'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/customStatus/{id}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/customStatus/{id}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/customStatus'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/eventToken'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/eventToken'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/eventToken'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/agent'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/agent/{agentId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/agent/{agentId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/agent/{agentId}/liveStatus'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/agent'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/agent/{agentId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/liveCalls'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/eavesdrop'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/hangup'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/hold'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/intercept'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/transfer'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/liveCalls/{id}/whisper'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}/liveStatistics'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/hunting/queue/{queueId}'
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
          '/telephony/{billingAccount}/ovhPabx'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def menu(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def menu_delete(billing_account:, menu_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'menu_id is required' if menu_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu/{menuId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{menuId}', ERB::Util.url_encode(menu_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def menu_entry(billing_account:, menu_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'menu_id is required' if menu_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu/{menuId}/entry'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{menuId}', ERB::Util.url_encode(menu_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def menu_entry_delete(billing_account:, entry_id:, menu_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'entry_id is required' if entry_id.nil?
        raise ArgumentError, 'menu_id is required' if menu_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu/{menuId}/entry/{entryId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{entryId}', ERB::Util.url_encode(entry_id.to_s))
            .gsub('{menuId}', ERB::Util.url_encode(menu_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def menu_entry_get(billing_account:, entry_id:, menu_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'entry_id is required' if entry_id.nil?
        raise ArgumentError, 'menu_id is required' if menu_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu/{menuId}/entry/{entryId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{entryId}', ERB::Util.url_encode(entry_id.to_s))
            .gsub('{menuId}', ERB::Util.url_encode(menu_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def menu_entry_post(billing_account:, menu_id:, service_name:, telephony_billing_account_ovh_pabx_service_name_menu_menu_id_eh0eb6c6d9:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'menu_id is required' if menu_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_ovh_pabx_service_name_menu_menu_id_eh0eb6c6d9 is required' if telephony_billing_account_ovh_pabx_service_name_menu_menu_id_eh0eb6c6d9.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu/{menuId}/entry'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{menuId}', ERB::Util.url_encode(menu_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_ovh_pabx_service_name_menu_menu_id_eh0eb6c6d9
        )
      end

      def menu_entry_put(billing_account:, entry_id:, menu_id:, service_name:, telephony_ovh_pabx_menu_entry:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'entry_id is required' if entry_id.nil?
        raise ArgumentError, 'menu_id is required' if menu_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_menu_entry is required' if telephony_ovh_pabx_menu_entry.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu/{menuId}/entry/{entryId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{entryId}', ERB::Util.url_encode(entry_id.to_s))
            .gsub('{menuId}', ERB::Util.url_encode(menu_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_menu_entry
        )
      end

      def menu_get(billing_account:, menu_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'menu_id is required' if menu_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu/{menuId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{menuId}', ERB::Util.url_encode(menu_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def menu_post(billing_account:, service_name:, telephony_billing_account_ovh_pabx_service_name_menu_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_ovh_pabx_service_name_menu_post_request is required' if telephony_billing_account_ovh_pabx_service_name_menu_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_ovh_pabx_service_name_menu_post_request
        )
      end

      def menu_put(billing_account:, menu_id:, service_name:, telephony_ovh_pabx_menu:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'menu_id is required' if menu_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_menu is required' if telephony_ovh_pabx_menu.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/menu/{menuId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{menuId}', ERB::Util.url_encode(menu_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_menu
        )
      end

      def records(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/records'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/records/{id}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/records/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sound(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/sound'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/sound/{soundId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/sound/{soundId}'
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
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/soundUpload'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_easy_hunting_service_name_sound_uplo_hd1064eff
        )
      end

      def tts(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/tts'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def tts_delete(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/tts/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def tts_get(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/tts/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def tts_post(billing_account:, service_name:, telephony_billing_account_ovh_pabx_service_name_tts_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_ovh_pabx_service_name_tts_post_request is required' if telephony_billing_account_ovh_pabx_service_name_tts_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/tts'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_ovh_pabx_service_name_tts_post_request
        )
      end

      def tts_put(billing_account:, id:, service_name:, telephony_ovh_pabx_tts:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx_tts is required' if telephony_ovh_pabx_tts.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}/tts/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx_tts
        )
      end

      def update(billing_account:, service_name:, telephony_ovh_pabx:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ovh_pabx is required' if telephony_ovh_pabx.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/ovhPabx/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ovh_pabx
        )
      end
    end
  end
end
