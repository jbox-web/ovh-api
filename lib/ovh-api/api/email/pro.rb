# frozen_string_literal: true

module Ovh::Api
  module Api
    class Email::Pro
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/email/pro',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_account_email_alias_alias_delete(alias_:, email:, service:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/pro/{service}/account/{email}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_alias_alias_get(service:, alias_:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/alias/{alias}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_alias_get(service:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/alias'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_alias_post(email:, service:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/account/{email}/alias'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_account_email_change_password_post(email:, service:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/account/{email}/changePassword'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_account_email_delete(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/pro/{service}/account/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_diagnostics_get(service:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/diagnostics'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_diagnostics_post(email:, service:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/account/{email}/diagnostics'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_account_email_full_access_allowed_account_id_delete(allowed_account_id:, email:, service:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/pro/{service}/account/{email}/fullAccess/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_full_access_allowed_account_id_get(service:, allowed_account_id:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/fullAccess/{allowedAccountId}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_full_access_get(service:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/fullAccess'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_full_access_post(email:, service:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/account/{email}/fullAccess'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_account_email_get(service:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_put(email:, service:, email_pro_account:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_pro_account is required' if email_pro_account.nil?

        @connection.call(
          :PUT,
          '/email/pro/{service}/account/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_pro_account
        )
      end

      def service_account_email_send_as_allowed_account_id_delete(allowed_account_id:, email:, service:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/pro/{service}/account/{email}/sendAs/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_as_allowed_account_id_get(service:, allowed_account_id:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/sendAs/{allowedAccountId}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_as_get(service:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/sendAs'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_as_post(email:, service:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/account/{email}/sendAs'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_account_email_send_on_behalf_to_allowed_account_id_delete(allowed_account_id:, email:, service:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/pro/{service}/account/{email}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_on_behalf_to_allowed_account_id_get(service:, allowed_account_id:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_on_behalf_to_get(service:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/sendOnBehalfTo'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_on_behalf_to_post(email:, service:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/account/{email}/sendOnBehalfTo'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_account_email_tasks_get(service:, email:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/tasks'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_tasks_id_get(service:, email:, id:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account/{email}/tasks/{id}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_terminate_post(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/account/{email}/terminate'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_get(service:, id: nil, primary_email_address: nil)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/account'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          query: { 'id' => id, 'primaryEmailAddress' => primary_email_address }
        )
      end

      def service_billing_migrated_get(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/billingMigrated'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_billing_plan_get(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/billingPlan'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_change_contact_post(service:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/changeContact'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_change_contact_post_request
        )
      end

      def service_domain_domain_name_delete(domain_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/pro/{service}/domain/{domainName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_disclaimer_attribute_get(service:, domain_name:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/domain/{domainName}/disclaimerAttribute'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_disclaimer_delete(domain_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/pro/{service}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_disclaimer_get(service:, domain_name:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/domain/{domainName}/disclaimer'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_disclaimer_post(domain_name:, service:, email_exchange_organization_name_service_exchange_service_doma_h2c9d9cb2:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_doma_h2c9d9cb2 is required' if email_exchange_organization_name_service_exchange_service_doma_h2c9d9cb2.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_doma_h2c9d9cb2
        )
      end

      def service_domain_domain_name_disclaimer_put(domain_name:, service:, email_pro_disclaimer:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_pro_disclaimer is required' if email_pro_disclaimer.nil?

        @connection.call(
          :PUT,
          '/email/pro/{service}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_pro_disclaimer
        )
      end

      def service_domain_domain_name_dkim_get(service:, domain_name:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/domain/{domainName}/dkim'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_dkim_post(domain_name:, service:, email_exchange_organization_name_service_exchange_service_doma_h39027816:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_doma_h39027816 is required' if email_exchange_organization_name_service_exchange_service_doma_h39027816.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/domain/{domainName}/dkim'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_doma_h39027816
        )
      end

      def service_domain_domain_name_dkim_selector_get(domain_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/domain/{domainName}/dkimSelector'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_dkim_selector_name_delete(domain_name:, selector_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'selector_name is required' if selector_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/pro/{service}/domain/{domainName}/dkim/{selectorName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{selectorName}', ERB::Util.url_encode(selector_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_dkim_selector_name_disable_post(domain_name:, selector_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'selector_name is required' if selector_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/domain/{domainName}/dkim/{selectorName}/disable'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{selectorName}', ERB::Util.url_encode(selector_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_dkim_selector_name_enable_post(domain_name:, selector_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'selector_name is required' if selector_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/domain/{domainName}/dkim/{selectorName}/enable'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{selectorName}', ERB::Util.url_encode(selector_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_dkim_selector_name_get(service:, domain_name:, selector_name:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'selector_name is required' if selector_name.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/domain/{domainName}/dkim/{selectorName}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{selectorName}', ERB::Util.url_encode(selector_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_get(service:, domain_name:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/domain/{domainName}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_put(domain_name:, service:, email_pro_domain:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_pro_domain is required' if email_pro_domain.nil?

        @connection.call(
          :PUT,
          '/email/pro/{service}/domain/{domainName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_pro_domain
        )
      end

      def service_domain_get(service:, state: nil)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/domain'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          query: { 'state' => state }
        )
      end

      def service_domain_post(service:, email_pro_service_domain_post_request:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_pro_service_domain_post_request is required' if email_pro_service_domain_post_request.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/domain'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_pro_service_domain_post_request
        )
      end

      def service_external_contact_external_email_address_delete(external_email_address:, service:)
        raise ArgumentError, 'external_email_address is required' if external_email_address.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/pro/{service}/externalContact/{externalEmailAddress}'
            .gsub('{externalEmailAddress}', ERB::Util.url_encode(external_email_address.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_external_contact_external_email_address_get(service:, external_email_address:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'external_email_address is required' if external_email_address.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/externalContact/{externalEmailAddress}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{externalEmailAddress}', ERB::Util.url_encode(external_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_external_contact_external_email_address_put(external_email_address:, service:, email_pro_external_contact:)
        raise ArgumentError, 'external_email_address is required' if external_email_address.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_pro_external_contact is required' if email_pro_external_contact.nil?

        @connection.call(
          :PUT,
          '/email/pro/{service}/externalContact/{externalEmailAddress}'
            .gsub('{externalEmailAddress}', ERB::Util.url_encode(external_email_address.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_pro_external_contact
        )
      end

      def service_external_contact_get(service:, display_name: nil, external_email_address: nil, first_name: nil, id: nil, last_name: nil)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/externalContact'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          query: { 'displayName' => display_name, 'externalEmailAddress' => external_email_address, 'firstName' => first_name, 'id' => id, 'lastName' => last_name }
        )
      end

      def service_external_contact_post(service:, email_mxplan_service_external_contact_post_request:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_mxplan_service_external_contact_post_request is required' if email_mxplan_service_external_contact_post_request.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/externalContact'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_mxplan_service_external_contact_post_request
        )
      end

      def service_get(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_put(service:, email_pro_service:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_pro_service is required' if email_pro_service.nil?

        @connection.call(
          :PUT,
          '/email/pro/{service}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_pro_service
        )
      end

      def service_server_get(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/server'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_service_infos_get(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/serviceInfos'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_service_infos_put(service:, services_service:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/email/pro/{service}/serviceInfos'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_task_get(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/task'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_task_id_get(service:, id:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/email/pro/{service}/task/{id}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_update_flags_on_all_accounts_post(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :POST,
          '/email/pro/{service}/updateFlagsOnAllAccounts'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
