# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me
      def initialize(connection)
        @connection = connection
      end

      def access_restriction_backup_code_delete
        @connection.call(
          :DELETE,
          '/me/accessRestriction/backupCode',
          type: nil,
          auth: []
        )
      end

      def access_restriction_backup_code_disable_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/backupCode/disable',
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_backup_code_enable_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/backupCode/enable',
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_backup_code_get
        @connection.call(
          :GET,
          '/me/accessRestriction/backupCode',
          type: nil,
          auth: []
        )
      end

      def access_restriction_backup_code_post
        @connection.call(
          :POST,
          '/me/accessRestriction/backupCode',
          type: nil,
          auth: []
        )
      end

      def access_restriction_backup_code_validate_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/backupCode/validate',
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_developer_mode_get
        @connection.call(
          :GET,
          '/me/accessRestriction/developerMode',
          type: nil,
          auth: []
        )
      end

      def access_restriction_developer_mode_put(nichandle_developer_mode_restriction:)
        raise ArgumentError, 'nichandle_developer_mode_restriction is required' if nichandle_developer_mode_restriction.nil?

        @connection.call(
          :PUT,
          '/me/accessRestriction/developerMode',
          type: nil,
          auth: [],
          body: nichandle_developer_mode_restriction
        )
      end

      def access_restriction_ip_default_rule_get
        @connection.call(
          :GET,
          '/me/accessRestriction/ipDefaultRule',
          type: nil,
          auth: []
        )
      end

      def access_restriction_ip_default_rule_put(nichandle_ip_restriction_default_rule:)
        raise ArgumentError, 'nichandle_ip_restriction_default_rule is required' if nichandle_ip_restriction_default_rule.nil?

        @connection.call(
          :PUT,
          '/me/accessRestriction/ipDefaultRule',
          type: nil,
          auth: [],
          body: nichandle_ip_restriction_default_rule
        )
      end

      def access_restriction_ip_get
        @connection.call(
          :GET,
          '/me/accessRestriction/ip',
          type: nil,
          auth: []
        )
      end

      def access_restriction_ip_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/accessRestriction/ip/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_ip_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/accessRestriction/ip/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_ip_id_put(id:, nichandle_ip_restriction:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'nichandle_ip_restriction is required' if nichandle_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/me/accessRestriction/ip/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: nichandle_ip_restriction
        )
      end

      def access_restriction_ip_post(me_access_restriction_ip_post_request:)
        raise ArgumentError, 'me_access_restriction_ip_post_request is required' if me_access_restriction_ip_post_request.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/ip',
          type: nil,
          auth: [],
          body: me_access_restriction_ip_post_request
        )
      end

      def access_restriction_sms_get
        @connection.call(
          :GET,
          '/me/accessRestriction/sms',
          type: nil,
          auth: []
        )
      end

      def access_restriction_sms_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/accessRestriction/sms/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_sms_id_disable_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/sms/{id}/disable'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_sms_id_enable_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/sms/{id}/enable'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_sms_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/accessRestriction/sms/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_sms_id_put(id:, nichandle_access_restriction_sms_account:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'nichandle_access_restriction_sms_account is required' if nichandle_access_restriction_sms_account.nil?

        @connection.call(
          :PUT,
          '/me/accessRestriction/sms/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: nichandle_access_restriction_sms_account
        )
      end

      def access_restriction_sms_id_send_code_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/sms/{id}/sendCode'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_sms_id_validate_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/sms/{id}/validate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_sms_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/sms',
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_totp_get
        @connection.call(
          :GET,
          '/me/accessRestriction/totp',
          type: nil,
          auth: []
        )
      end

      def access_restriction_totp_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/accessRestriction/totp/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_totp_id_disable_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/totp/{id}/disable'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_totp_id_enable_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/totp/{id}/enable'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_totp_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/accessRestriction/totp/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_totp_id_put(id:, nichandle_access_restriction_totp_account:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'nichandle_access_restriction_totp_account is required' if nichandle_access_restriction_totp_account.nil?

        @connection.call(
          :PUT,
          '/me/accessRestriction/totp/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: nichandle_access_restriction_totp_account
        )
      end

      def access_restriction_totp_id_validate_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/totp/{id}/validate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def access_restriction_totp_post
        @connection.call(
          :POST,
          '/me/accessRestriction/totp',
          type: nil,
          auth: []
        )
      end

      def access_restriction_u2f_get
        @connection.call(
          :GET,
          '/me/accessRestriction/u2f',
          type: nil,
          auth: []
        )
      end

      def access_restriction_u2f_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/accessRestriction/u2f/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_u2f_id_disable_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/u2f/{id}/disable'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_u2f_id_enable_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/u2f/{id}/enable'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_u2f_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/accessRestriction/u2f/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def access_restriction_u2f_id_put(id:, nichandle_access_restriction_u2_f_account:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'nichandle_access_restriction_u2_f_account is required' if nichandle_access_restriction_u2_f_account.nil?

        @connection.call(
          :PUT,
          '/me/accessRestriction/u2f/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: nichandle_access_restriction_u2_f_account
        )
      end

      def access_restriction_u2f_id_validate_post(id:, me_access_restriction_u2f_id_validate_post_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'me_access_restriction_u2f_id_validate_post_request is required' if me_access_restriction_u2f_id_validate_post_request.nil?

        @connection.call(
          :POST,
          '/me/accessRestriction/u2f/{id}/validate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: me_access_restriction_u2f_id_validate_post_request
        )
      end

      def access_restriction_u2f_post
        @connection.call(
          :POST,
          '/me/accessRestriction/u2f',
          type: nil,
          auth: []
        )
      end

      def api_application_application_id_delete(application_id:)
        raise ArgumentError, 'application_id is required' if application_id.nil?

        @connection.call(
          :DELETE,
          '/me/api/application/{applicationId}'
            .gsub('{applicationId}', ERB::Util.url_encode(application_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_application_application_id_get(application_id:)
        raise ArgumentError, 'application_id is required' if application_id.nil?

        @connection.call(
          :GET,
          '/me/api/application/{applicationId}'
            .gsub('{applicationId}', ERB::Util.url_encode(application_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_application_get
        @connection.call(
          :GET,
          '/me/api/application',
          type: nil,
          auth: []
        )
      end

      def api_credential_credential_id_application_get(credential_id:)
        raise ArgumentError, 'credential_id is required' if credential_id.nil?

        @connection.call(
          :GET,
          '/me/api/credential/{credentialId}/application'
            .gsub('{credentialId}', ERB::Util.url_encode(credential_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_credential_credential_id_delete(credential_id:)
        raise ArgumentError, 'credential_id is required' if credential_id.nil?

        @connection.call(
          :DELETE,
          '/me/api/credential/{credentialId}'
            .gsub('{credentialId}', ERB::Util.url_encode(credential_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_credential_credential_id_get(credential_id:)
        raise ArgumentError, 'credential_id is required' if credential_id.nil?

        @connection.call(
          :GET,
          '/me/api/credential/{credentialId}'
            .gsub('{credentialId}', ERB::Util.url_encode(credential_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_credential_credential_id_put(credential_id:, auth_api_credential:)
        raise ArgumentError, 'credential_id is required' if credential_id.nil?
        raise ArgumentError, 'auth_api_credential is required' if auth_api_credential.nil?

        @connection.call(
          :PUT,
          '/me/api/credential/{credentialId}'
            .gsub('{credentialId}', ERB::Util.url_encode(credential_id.to_s)),
          type: nil,
          auth: [],
          body: auth_api_credential
        )
      end

      def api_credential_get(application_id: nil, status: nil)
        @connection.call(
          :GET,
          '/me/api/credential',
          type: nil,
          auth: [],
          query: { 'applicationId' => application_id, 'status' => status }
        )
      end

      def api_log_kind_get
        @connection.call(
          :GET,
          '/me/api/log/kind',
          type: nil,
          auth: []
        )
      end

      def api_log_kind_name_get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/me/api/log/kind/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_log_subscription_get(kind: nil)
        @connection.call(
          :GET,
          '/me/api/log/subscription',
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def api_log_subscription_post(dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/me/api/log/subscription',
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def api_log_subscription_subscription_id_delete(subscription_id:)
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/me/api/log/subscription/{subscriptionId}'
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_log_subscription_subscription_id_get(subscription_id:)
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/me/api/log/subscription/{subscriptionId}'
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_log_url_post(dbaas_logs_log_url_creation:)
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/me/api/log/url',
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def api_logs_self_get
        @connection.call(
          :GET,
          '/me/api/logs/self',
          type: nil,
          auth: []
        )
      end

      def api_logs_self_log_id_get(log_id:)
        raise ArgumentError, 'log_id is required' if log_id.nil?

        @connection.call(
          :GET,
          '/me/api/logs/self/{logId}'
            .gsub('{logId}', ERB::Util.url_encode(log_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_logs_services_get
        @connection.call(
          :GET,
          '/me/api/logs/services',
          type: nil,
          auth: []
        )
      end

      def api_logs_services_log_id_get(log_id:)
        raise ArgumentError, 'log_id is required' if log_id.nil?

        @connection.call(
          :GET,
          '/me/api/logs/services/{logId}'
            .gsub('{logId}', ERB::Util.url_encode(log_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_oauth2_client_client_id_delete(client_id:)
        raise ArgumentError, 'client_id is required' if client_id.nil?

        @connection.call(
          :DELETE,
          '/me/api/oauth2/client/{clientId}'
            .gsub('{clientId}', ERB::Util.url_encode(client_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_oauth2_client_client_id_get(client_id:)
        raise ArgumentError, 'client_id is required' if client_id.nil?

        @connection.call(
          :GET,
          '/me/api/oauth2/client/{clientId}'
            .gsub('{clientId}', ERB::Util.url_encode(client_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def api_oauth2_client_client_id_put(client_id:, oauth2_client:)
        raise ArgumentError, 'client_id is required' if client_id.nil?
        raise ArgumentError, 'oauth2_client is required' if oauth2_client.nil?

        @connection.call(
          :PUT,
          '/me/api/oauth2/client/{clientId}'
            .gsub('{clientId}', ERB::Util.url_encode(client_id.to_s)),
          type: nil,
          auth: [],
          body: oauth2_client
        )
      end

      def api_oauth2_client_get
        @connection.call(
          :GET,
          '/me/api/oauth2/client',
          type: nil,
          auth: []
        )
      end

      def api_oauth2_client_post(oauth2_client_request:)
        raise ArgumentError, 'oauth2_client_request is required' if oauth2_client_request.nil?

        @connection.call(
          :POST,
          '/me/api/oauth2/client',
          type: nil,
          auth: [],
          body: oauth2_client_request
        )
      end

      def autorenew_get
        @connection.call(
          :GET,
          '/me/autorenew',
          type: nil,
          auth: []
        )
      end

      def autorenew_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/autorenew',
          type: nil,
          auth: [],
          body: body
        )
      end

      def autorenew_put(nichandle_nic_autorenew_infos:)
        raise ArgumentError, 'nichandle_nic_autorenew_infos is required' if nichandle_nic_autorenew_infos.nil?

        @connection.call(
          :PUT,
          '/me/autorenew',
          type: nil,
          auth: [],
          body: nichandle_nic_autorenew_infos
        )
      end

      def available_automatic_payment_means_get
        @connection.call(
          :GET,
          '/me/availableAutomaticPaymentMeans',
          type: nil,
          auth: []
        )
      end

      def billing_group_get(name: nil, service_id: nil)
        @connection.call(
          :GET,
          '/me/billing/group',
          type: nil,
          auth: [],
          query: { 'name' => name, 'serviceId' => service_id }
        )
      end

      def billing_group_group_id_delete(group_id:)
        raise ArgumentError, 'group_id is required' if group_id.nil?

        @connection.call(
          :DELETE,
          '/me/billing/group/{groupId}'
            .gsub('{groupId}', ERB::Util.url_encode(group_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_group_group_id_get(group_id:)
        raise ArgumentError, 'group_id is required' if group_id.nil?

        @connection.call(
          :GET,
          '/me/billing/group/{groupId}'
            .gsub('{groupId}', ERB::Util.url_encode(group_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_group_group_id_put(group_id:, me_billing_group_billing_group:)
        raise ArgumentError, 'group_id is required' if group_id.nil?
        raise ArgumentError, 'me_billing_group_billing_group is required' if me_billing_group_billing_group.nil?

        @connection.call(
          :PUT,
          '/me/billing/group/{groupId}'
            .gsub('{groupId}', ERB::Util.url_encode(group_id.to_s)),
          type: nil,
          auth: [],
          body: me_billing_group_billing_group
        )
      end

      def billing_group_group_id_service_get(group_id:)
        raise ArgumentError, 'group_id is required' if group_id.nil?

        @connection.call(
          :GET,
          '/me/billing/group/{groupId}/service'
            .gsub('{groupId}', ERB::Util.url_encode(group_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_group_group_id_service_post(group_id:, me_billing_group_service_create:)
        raise ArgumentError, 'group_id is required' if group_id.nil?
        raise ArgumentError, 'me_billing_group_service_create is required' if me_billing_group_service_create.nil?

        @connection.call(
          :POST,
          '/me/billing/group/{groupId}/service'
            .gsub('{groupId}', ERB::Util.url_encode(group_id.to_s)),
          type: nil,
          auth: [],
          body: me_billing_group_service_create
        )
      end

      def billing_group_group_id_service_service_id_delete(group_id:, service_id:)
        raise ArgumentError, 'group_id is required' if group_id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :DELETE,
          '/me/billing/group/{groupId}/service/{serviceId}'
            .gsub('{groupId}', ERB::Util.url_encode(group_id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_group_group_id_service_service_id_get(group_id:, service_id:)
        raise ArgumentError, 'group_id is required' if group_id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/me/billing/group/{groupId}/service/{serviceId}'
            .gsub('{groupId}', ERB::Util.url_encode(group_id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_group_post(me_billing_group_billing_group:)
        raise ArgumentError, 'me_billing_group_billing_group is required' if me_billing_group_billing_group.nil?

        @connection.call(
          :POST,
          '/me/billing/group',
          type: nil,
          auth: [],
          body: me_billing_group_billing_group
        )
      end

      def billing_invoices_by_postal_mail_get
        @connection.call(
          :GET,
          '/me/billing/invoicesByPostalMail',
          type: nil,
          auth: []
        )
      end

      def billing_invoices_by_postal_mail_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/billing/invoicesByPostalMail',
          type: nil,
          auth: [],
          body: body
        )
      end

      def billing_purchase_order_get(billing_group_id: nil)
        @connection.call(
          :GET,
          '/me/billing/purchaseOrder',
          type: nil,
          auth: [],
          query: { 'billingGroupId' => billing_group_id }
        )
      end

      def billing_purchase_order_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/billing/purchaseOrder/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_purchase_order_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/billing/purchaseOrder/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_purchase_order_id_put(id:, me_billing_purchase_order_update:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'me_billing_purchase_order_update is required' if me_billing_purchase_order_update.nil?

        @connection.call(
          :PUT,
          '/me/billing/purchaseOrder/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: me_billing_purchase_order_update
        )
      end

      def billing_purchase_order_post(me_billing_purchase_order_creation:)
        raise ArgumentError, 'me_billing_purchase_order_creation is required' if me_billing_purchase_order_creation.nil?

        @connection.call(
          :POST,
          '/me/billing/purchaseOrder',
          type: nil,
          auth: [],
          body: me_billing_purchase_order_creation
        )
      end

      def billing_report_consumption_get
        @connection.call(
          :GET,
          '/me/billing/report/consumption',
          type: nil,
          auth: []
        )
      end

      def billing_report_consumption_post(me_billing_report_consumption_creation_request:)
        raise ArgumentError, 'me_billing_report_consumption_creation_request is required' if me_billing_report_consumption_creation_request.nil?

        @connection.call(
          :POST,
          '/me/billing/report/consumption',
          type: nil,
          auth: [],
          body: me_billing_report_consumption_creation_request
        )
      end

      def billing_report_consumption_task_id_get(task_id:)
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/me/billing/report/consumption/{taskId}'
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def bring_your_own_ip_token_get(campus:)
        raise ArgumentError, 'campus is required' if campus.nil?

        @connection.call(
          :GET,
          '/me/bringYourOwnIp/token',
          type: nil,
          auth: [],
          query: { 'campus' => campus }
        )
      end

      def carbon_calculator_has_invoice_get(date: nil)
        @connection.call(
          :GET,
          '/me/carbonCalculator/hasInvoice',
          type: nil,
          auth: [],
          query: { 'date' => date }
        )
      end

      def carbon_calculator_task_get
        @connection.call(
          :GET,
          '/me/carbonCalculator/task',
          type: nil,
          auth: []
        )
      end

      def carbon_calculator_task_post(carbon_calculator_calculation_request:)
        raise ArgumentError, 'carbon_calculator_calculation_request is required' if carbon_calculator_calculation_request.nil?

        @connection.call(
          :POST,
          '/me/carbonCalculator/task',
          type: nil,
          auth: [],
          body: carbon_calculator_calculation_request
        )
      end

      def carbon_calculator_task_task_id_get(task_id:)
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/me/carbonCalculator/task/{taskID}'
            .gsub('{taskID}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def certificates_get(name: nil)
        @connection.call(
          :GET,
          '/me/certificates',
          type: nil,
          auth: [],
          query: { 'name' => name }
        )
      end

      def change_email_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/changeEmail',
          type: nil,
          auth: [],
          body: body
        )
      end

      def change_password_post
        @connection.call(
          :POST,
          '/me/changePassword',
          type: nil,
          auth: []
        )
      end

      def debt_account_debt_debt_id_get(debt_id:)
        raise ArgumentError, 'debt_id is required' if debt_id.nil?

        @connection.call(
          :GET,
          '/me/debtAccount/debt/{debtId}'
            .gsub('{debtId}', ERB::Util.url_encode(debt_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def debt_account_debt_debt_id_operation_get(debt_id:, deposit_order_id: nil)
        raise ArgumentError, 'debt_id is required' if debt_id.nil?

        @connection.call(
          :GET,
          '/me/debtAccount/debt/{debtId}/operation'
            .gsub('{debtId}', ERB::Util.url_encode(debt_id.to_s)),
          type: nil,
          auth: [],
          query: { 'depositOrderId' => deposit_order_id }
        )
      end

      def debt_account_debt_debt_id_operation_operation_id_associated_object_get(debt_id:, operation_id:)
        raise ArgumentError, 'debt_id is required' if debt_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/debtAccount/debt/{debtId}/operation/{operationId}/associatedObject'
            .gsub('{debtId}', ERB::Util.url_encode(debt_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def debt_account_debt_debt_id_operation_operation_id_get(debt_id:, operation_id:)
        raise ArgumentError, 'debt_id is required' if debt_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/debtAccount/debt/{debtId}/operation/{operationId}'
            .gsub('{debtId}', ERB::Util.url_encode(debt_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def debt_account_debt_debt_id_pay_post(debt_id:)
        raise ArgumentError, 'debt_id is required' if debt_id.nil?

        @connection.call(
          :POST,
          '/me/debtAccount/debt/{debtId}/pay'
            .gsub('{debtId}', ERB::Util.url_encode(debt_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def debt_account_debt_get
        @connection.call(
          :GET,
          '/me/debtAccount/debt',
          type: nil,
          auth: []
        )
      end

      def debt_account_get
        @connection.call(
          :GET,
          '/me/debtAccount',
          type: nil,
          auth: []
        )
      end

      def debt_account_pay_post
        @connection.call(
          :POST,
          '/me/debtAccount/pay',
          type: nil,
          auth: []
        )
      end

      def fidelity_account_credit_order_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/fidelityAccount/creditOrder',
          type: nil,
          auth: [],
          body: body
        )
      end

      def fidelity_account_get
        @connection.call(
          :GET,
          '/me/fidelityAccount',
          type: nil,
          auth: []
        )
      end

      def fidelity_account_movements_get(date_from: nil, date_to: nil)
        @connection.call(
          :GET,
          '/me/fidelityAccount/movements',
          type: nil,
          auth: [],
          query: { 'date.from' => date_from, 'date.to' => date_to }
        )
      end

      def fidelity_account_movements_movement_id_get(movement_id:)
        raise ArgumentError, 'movement_id is required' if movement_id.nil?

        @connection.call(
          :GET,
          '/me/fidelityAccount/movements/{movementId}'
            .gsub('{movementId}', ERB::Util.url_encode(movement_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def fidelity_account_put(billing_fidelity_account:)
        raise ArgumentError, 'billing_fidelity_account is required' if billing_fidelity_account.nil?

        @connection.call(
          :PUT,
          '/me/fidelityAccount',
          type: nil,
          auth: [],
          body: billing_fidelity_account
        )
      end

      def geolocation_post
        @connection.call(
          :POST,
          '/me/geolocation',
          type: nil,
          auth: []
        )
      end

      def get
        @connection.call(
          :GET,
          '/me',
          type: nil,
          auth: []
        )
      end

      def identity_group_get
        @connection.call(
          :GET,
          '/me/identity/group',
          type: nil,
          auth: []
        )
      end

      def identity_group_group_delete(group:)
        raise ArgumentError, 'group is required' if group.nil?

        @connection.call(
          :DELETE,
          '/me/identity/group/{group}'
            .gsub('{group}', ERB::Util.url_encode(group.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_group_group_get(group:)
        raise ArgumentError, 'group is required' if group.nil?

        @connection.call(
          :GET,
          '/me/identity/group/{group}'
            .gsub('{group}', ERB::Util.url_encode(group.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_group_group_put(group:, auth_group:)
        raise ArgumentError, 'group is required' if group.nil?
        raise ArgumentError, 'auth_group is required' if auth_group.nil?

        @connection.call(
          :PUT,
          '/me/identity/group/{group}'
            .gsub('{group}', ERB::Util.url_encode(group.to_s)),
          type: nil,
          auth: [],
          body: auth_group
        )
      end

      def identity_group_group_user_get(group:)
        raise ArgumentError, 'group is required' if group.nil?

        @connection.call(
          :GET,
          '/me/identity/group/{group}/user'
            .gsub('{group}', ERB::Util.url_encode(group.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_group_group_user_post(group:, auth_group_user:)
        raise ArgumentError, 'group is required' if group.nil?
        raise ArgumentError, 'auth_group_user is required' if auth_group_user.nil?

        @connection.call(
          :POST,
          '/me/identity/group/{group}/user'
            .gsub('{group}', ERB::Util.url_encode(group.to_s)),
          type: nil,
          auth: [],
          body: auth_group_user
        )
      end

      def identity_group_group_user_user_delete(group:, user:)
        raise ArgumentError, 'group is required' if group.nil?
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :DELETE,
          '/me/identity/group/{group}/user/{user}'
            .gsub('{group}', ERB::Util.url_encode(group.to_s))
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_group_post(auth_group_request:)
        raise ArgumentError, 'auth_group_request is required' if auth_group_request.nil?

        @connection.call(
          :POST,
          '/me/identity/group',
          type: nil,
          auth: [],
          body: auth_group_request
        )
      end

      def identity_provider_delete
        @connection.call(
          :DELETE,
          '/me/identity/provider',
          type: nil,
          auth: []
        )
      end

      def identity_provider_get
        @connection.call(
          :GET,
          '/me/identity/provider',
          type: nil,
          auth: []
        )
      end

      def identity_provider_post(auth_provider_request:)
        raise ArgumentError, 'auth_provider_request is required' if auth_provider_request.nil?

        @connection.call(
          :POST,
          '/me/identity/provider',
          type: nil,
          auth: [],
          body: auth_provider_request
        )
      end

      def identity_provider_put(auth_provider:)
        raise ArgumentError, 'auth_provider is required' if auth_provider.nil?

        @connection.call(
          :PUT,
          '/me/identity/provider',
          type: nil,
          auth: [],
          body: auth_provider
        )
      end

      def identity_user_get
        @connection.call(
          :GET,
          '/me/identity/user',
          type: nil,
          auth: []
        )
      end

      def identity_user_post(auth_user_request:)
        raise ArgumentError, 'auth_user_request is required' if auth_user_request.nil?

        @connection.call(
          :POST,
          '/me/identity/user',
          type: nil,
          auth: [],
          body: auth_user_request
        )
      end

      def identity_user_user_delete(user:)
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :DELETE,
          '/me/identity/user/{user}'
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_user_user_disable_post(user:)
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :POST,
          '/me/identity/user/{user}/disable'
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_user_user_enable_post(user:)
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :POST,
          '/me/identity/user/{user}/enable'
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_user_user_get(user:)
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :GET,
          '/me/identity/user/{user}'
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_user_user_put(user:, auth_user:)
        raise ArgumentError, 'user is required' if user.nil?
        raise ArgumentError, 'auth_user is required' if auth_user.nil?

        @connection.call(
          :PUT,
          '/me/identity/user/{user}'
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: [],
          body: auth_user
        )
      end

      def identity_user_user_token_get(user:)
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :GET,
          '/me/identity/user/{user}/token'
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_user_user_token_name_delete(name:, user:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :DELETE,
          '/me/identity/user/{user}/token/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_user_user_token_name_get(name:, user:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'user is required' if user.nil?

        @connection.call(
          :GET,
          '/me/identity/user/{user}/token/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: []
        )
      end

      def identity_user_user_token_name_put(name:, user:, auth_personal_access_token_modify_request:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'user is required' if user.nil?
        raise ArgumentError, 'auth_personal_access_token_modify_request is required' if auth_personal_access_token_modify_request.nil?

        @connection.call(
          :PUT,
          '/me/identity/user/{user}/token/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: [],
          body: auth_personal_access_token_modify_request
        )
      end

      def identity_user_user_token_post(user:, auth_personal_access_token_request:)
        raise ArgumentError, 'user is required' if user.nil?
        raise ArgumentError, 'auth_personal_access_token_request is required' if auth_personal_access_token_request.nil?

        @connection.call(
          :POST,
          '/me/identity/user/{user}/token'
            .gsub('{user}', ERB::Util.url_encode(user.to_s)),
          type: nil,
          auth: [],
          body: auth_personal_access_token_request
        )
      end

      def insight_get
        @connection.call(
          :GET,
          '/me/insight',
          type: nil,
          auth: []
        )
      end

      def marketing_get
        @connection.call(
          :GET,
          '/me/marketing',
          type: nil,
          auth: []
        )
      end

      def marketing_put(me_marketing_consent:)
        raise ArgumentError, 'me_marketing_consent is required' if me_marketing_consent.nil?

        @connection.call(
          :PUT,
          '/me/marketing',
          type: nil,
          auth: [],
          body: me_marketing_consent
        )
      end

      def notification_email_history_get
        @connection.call(
          :GET,
          '/me/notification/email/history',
          type: nil,
          auth: []
        )
      end

      def notification_email_history_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/notification/email/history/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def partner_level_get
        @connection.call(
          :GET,
          '/me/partnerLevel',
          type: nil,
          auth: []
        )
      end

      def password_recover_post(me_password_recover_post_request:)
        raise ArgumentError, 'me_password_recover_post_request is required' if me_password_recover_post_request.nil?

        @connection.call(
          :POST,
          '/me/passwordRecover',
          type: nil,
          auth: [],
          body: me_password_recover_post_request
        )
      end

      def payment_available_methods_get
        @connection.call(
          :GET,
          '/me/payment/availableMethods',
          type: nil,
          auth: []
        )
      end

      def payment_mean_bank_account_get(state: nil)
        @connection.call(
          :GET,
          '/me/paymentMean/bankAccount',
          type: nil,
          auth: [],
          query: { 'state' => state }
        )
      end

      def payment_mean_bank_account_id_challenge_post(id:, me_payment_mean_bank_account_challenge_creation:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'me_payment_mean_bank_account_challenge_creation is required' if me_payment_mean_bank_account_challenge_creation.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/bankAccount/{id}/challenge'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_mean_bank_account_challenge_creation
        )
      end

      def payment_mean_bank_account_id_choose_as_default_payment_mean_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/bankAccount/{id}/chooseAsDefaultPaymentMean'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_bank_account_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/paymentMean/bankAccount/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_bank_account_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/paymentMean/bankAccount/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_bank_account_id_put(id:, me_payment_mean_bank_account:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'me_payment_mean_bank_account is required' if me_payment_mean_bank_account.nil?

        @connection.call(
          :PUT,
          '/me/paymentMean/bankAccount/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_mean_bank_account
        )
      end

      def payment_mean_bank_account_post(me_payment_mean_bank_account_creation:)
        raise ArgumentError, 'me_payment_mean_bank_account_creation is required' if me_payment_mean_bank_account_creation.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/bankAccount',
          type: nil,
          auth: [],
          body: me_payment_mean_bank_account_creation
        )
      end

      def payment_mean_credit_card_get
        @connection.call(
          :GET,
          '/me/paymentMean/creditCard',
          type: nil,
          auth: []
        )
      end

      def payment_mean_credit_card_id_challenge_post(id:, me_payment_mean_credit_card_challenge_creation:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'me_payment_mean_credit_card_challenge_creation is required' if me_payment_mean_credit_card_challenge_creation.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/creditCard/{id}/challenge'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_mean_credit_card_challenge_creation
        )
      end

      def payment_mean_credit_card_id_choose_as_default_payment_mean_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/creditCard/{id}/chooseAsDefaultPaymentMean'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_credit_card_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/paymentMean/creditCard/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_credit_card_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/paymentMean/creditCard/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_credit_card_id_put(id:, me_payment_mean_credit_card:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'me_payment_mean_credit_card is required' if me_payment_mean_credit_card.nil?

        @connection.call(
          :PUT,
          '/me/paymentMean/creditCard/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_mean_credit_card
        )
      end

      def payment_mean_credit_card_post(me_payment_mean_credit_card_creation:)
        raise ArgumentError, 'me_payment_mean_credit_card_creation is required' if me_payment_mean_credit_card_creation.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/creditCard',
          type: nil,
          auth: [],
          body: me_payment_mean_credit_card_creation
        )
      end

      def payment_mean_deferred_payment_account_get
        @connection.call(
          :GET,
          '/me/paymentMean/deferredPaymentAccount',
          type: nil,
          auth: []
        )
      end

      def payment_mean_deferred_payment_account_id_choose_as_default_payment_mean_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/deferredPaymentAccount/{id}/chooseAsDefaultPaymentMean'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_deferred_payment_account_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/paymentMean/deferredPaymentAccount/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_deferred_payment_account_id_put(id:, me_payment_mean_deferred:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'me_payment_mean_deferred is required' if me_payment_mean_deferred.nil?

        @connection.call(
          :PUT,
          '/me/paymentMean/deferredPaymentAccount/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_mean_deferred
        )
      end

      def payment_mean_paypal_get
        @connection.call(
          :GET,
          '/me/paymentMean/paypal',
          type: nil,
          auth: []
        )
      end

      def payment_mean_paypal_id_challenge_post(id:, me_payment_mean_paypal_challenge_creation:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'me_payment_mean_paypal_challenge_creation is required' if me_payment_mean_paypal_challenge_creation.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/paypal/{id}/challenge'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_mean_paypal_challenge_creation
        )
      end

      def payment_mean_paypal_id_choose_as_default_payment_mean_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/paypal/{id}/chooseAsDefaultPaymentMean'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_paypal_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/paymentMean/paypal/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_paypal_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/paymentMean/paypal/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_mean_paypal_id_put(id:, me_payment_mean_paypal:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'me_payment_mean_paypal is required' if me_payment_mean_paypal.nil?

        @connection.call(
          :PUT,
          '/me/paymentMean/paypal/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_mean_paypal
        )
      end

      def payment_mean_paypal_post(me_payment_mean_paypal_creation:)
        raise ArgumentError, 'me_payment_mean_paypal_creation is required' if me_payment_mean_paypal_creation.nil?

        @connection.call(
          :POST,
          '/me/paymentMean/paypal',
          type: nil,
          auth: [],
          body: me_payment_mean_paypal_creation
        )
      end

      def payment_method_get(default: nil, payment_type: nil, status: nil)
        @connection.call(
          :GET,
          '/me/payment/method',
          type: nil,
          auth: [],
          query: { 'default' => default, 'paymentType' => payment_type, 'status' => status }
        )
      end

      def payment_method_payment_method_id_challenge_post(payment_method_id:, me_payment_method_challenge:)
        raise ArgumentError, 'payment_method_id is required' if payment_method_id.nil?
        raise ArgumentError, 'me_payment_method_challenge is required' if me_payment_method_challenge.nil?

        @connection.call(
          :POST,
          '/me/payment/method/{paymentMethodId}/challenge'
            .gsub('{paymentMethodId}', ERB::Util.url_encode(payment_method_id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_method_challenge
        )
      end

      def payment_method_payment_method_id_delete(payment_method_id:)
        raise ArgumentError, 'payment_method_id is required' if payment_method_id.nil?

        @connection.call(
          :DELETE,
          '/me/payment/method/{paymentMethodId}'
            .gsub('{paymentMethodId}', ERB::Util.url_encode(payment_method_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_method_payment_method_id_details_post(payment_method_id:, me_payment_method_details:)
        raise ArgumentError, 'payment_method_id is required' if payment_method_id.nil?
        raise ArgumentError, 'me_payment_method_details is required' if me_payment_method_details.nil?

        @connection.call(
          :POST,
          '/me/payment/method/{paymentMethodId}/details'
            .gsub('{paymentMethodId}', ERB::Util.url_encode(payment_method_id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_method_details
        )
      end

      def payment_method_payment_method_id_finalize_post(payment_method_id:, me_payment_method_finalize:)
        raise ArgumentError, 'payment_method_id is required' if payment_method_id.nil?
        raise ArgumentError, 'me_payment_method_finalize is required' if me_payment_method_finalize.nil?

        @connection.call(
          :POST,
          '/me/payment/method/{paymentMethodId}/finalize'
            .gsub('{paymentMethodId}', ERB::Util.url_encode(payment_method_id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_method_finalize
        )
      end

      def payment_method_payment_method_id_get(payment_method_id:)
        raise ArgumentError, 'payment_method_id is required' if payment_method_id.nil?

        @connection.call(
          :GET,
          '/me/payment/method/{paymentMethodId}'
            .gsub('{paymentMethodId}', ERB::Util.url_encode(payment_method_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def payment_method_payment_method_id_put(payment_method_id:, me_payment_payment_method:)
        raise ArgumentError, 'payment_method_id is required' if payment_method_id.nil?
        raise ArgumentError, 'me_payment_payment_method is required' if me_payment_payment_method.nil?

        @connection.call(
          :PUT,
          '/me/payment/method/{paymentMethodId}'
            .gsub('{paymentMethodId}', ERB::Util.url_encode(payment_method_id.to_s)),
          type: nil,
          auth: [],
          body: me_payment_payment_method
        )
      end

      def payment_method_post(me_payment_method_creation:)
        raise ArgumentError, 'me_payment_method_creation is required' if me_payment_method_creation.nil?

        @connection.call(
          :POST,
          '/me/payment/method',
          type: nil,
          auth: [],
          body: me_payment_method_creation
        )
      end

      def payment_transaction_get(payment_method_id: nil, status: nil)
        @connection.call(
          :GET,
          '/me/payment/transaction',
          type: nil,
          auth: [],
          query: { 'paymentMethodId' => payment_method_id, 'status' => status }
        )
      end

      def payment_transaction_transaction_id_get(transaction_id:)
        raise ArgumentError, 'transaction_id is required' if transaction_id.nil?

        @connection.call(
          :GET,
          '/me/payment/transaction/{transactionId}'
            .gsub('{transactionId}', ERB::Util.url_encode(transaction_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def put(nichandle_nichandle:)
        raise ArgumentError, 'nichandle_nichandle is required' if nichandle_nichandle.nil?

        @connection.call(
          :PUT,
          '/me',
          type: nil,
          auth: [],
          body: nichandle_nichandle
        )
      end

      def recommendations_get(max: nil, range: nil)
        @connection.call(
          :GET,
          '/me/recommendations',
          type: nil,
          auth: [],
          query: { 'max' => max, 'range' => range }
        )
      end

      def support_level_get
        @connection.call(
          :GET,
          '/me/supportLevel',
          type: nil,
          auth: []
        )
      end

      def vip_status_get
        @connection.call(
          :GET,
          '/me/vipStatus',
          type: nil,
          auth: []
        )
      end

      def voucher_check_validity_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/voucher/checkValidity',
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
