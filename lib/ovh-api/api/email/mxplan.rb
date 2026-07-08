# frozen_string_literal: true

module Ovh::Api
  module Api
    class Email::Mxplan
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/email/mxplan',
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
          '/email/mxplan/{service}/account/{email}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_alias_alias_get(alias_:, email:, service:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_alias_get(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/alias'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
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
          '/email/mxplan/{service}/account/{email}/alias'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_account_email_capabilities_get(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/capabilities'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_change_password_post(email:, service:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/mxplan/{service}/account/{email}/changePassword'
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
          '/email/mxplan/{service}/account/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_diagnostic_get(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/diagnostic'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_diagnostic_post(email:, service:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/mxplan/{service}/account/{email}/diagnostic'
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
          '/email/mxplan/{service}/account/{email}/fullAccess/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_full_access_allowed_account_id_get(allowed_account_id:, email:, service:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/fullAccess/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_full_access_get(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/fullAccess'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
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
          '/email/mxplan/{service}/account/{email}/fullAccess'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_account_email_get(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_put(email:, service:, email_mxplan_account:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_mxplan_account is required' if email_mxplan_account.nil?

        @connection.call(
          :PUT,
          '/email/mxplan/{service}/account/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_mxplan_account
        )
      end

      def service_account_email_send_as_allowed_account_id_delete(allowed_account_id:, email:, service:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/mxplan/{service}/account/{email}/sendAs/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_as_allowed_account_id_get(allowed_account_id:, email:, service:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/sendAs/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_as_get(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/sendAs'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
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
          '/email/mxplan/{service}/account/{email}/sendAs'
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
          '/email/mxplan/{service}/account/{email}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_on_behalf_to_allowed_account_id_get(allowed_account_id:, email:, service:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_send_on_behalf_to_get(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/sendOnBehalfTo'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
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
          '/email/mxplan/{service}/account/{email}/sendOnBehalfTo'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_account_email_task_get(email:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/task'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_email_task_id_get(email:, id:, service:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account/{email}/task/{id}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_account_get(service:, id: nil, primary_email_address: nil)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/account'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          query: { 'id' => id, 'primaryEmailAddress' => primary_email_address }
        )
      end

      def service_domain_domain_name_disclaimer_attribute_get(domain_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/domain/{domainName}/disclaimerAttribute'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_disclaimer_delete(domain_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/mxplan/{service}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_disclaimer_get(domain_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
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
          '/email/mxplan/{service}/domain/{domainName}/disclaimer'
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
          '/email/mxplan/{service}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_pro_disclaimer
        )
      end

      def service_domain_domain_name_get(domain_name:, service:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/domain/{domainName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_domain_domain_name_put(domain_name:, service:, email_mxplan_domain:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_mxplan_domain is required' if email_mxplan_domain.nil?

        @connection.call(
          :PUT,
          '/email/mxplan/{service}/domain/{domainName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_mxplan_domain
        )
      end

      def service_domain_get(service:, state: nil)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/domain'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          query: { 'state' => state }
        )
      end

      def service_external_contact_external_email_address_delete(external_email_address:, service:)
        raise ArgumentError, 'external_email_address is required' if external_email_address.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :DELETE,
          '/email/mxplan/{service}/externalContact/{externalEmailAddress}'
            .gsub('{externalEmailAddress}', ERB::Util.url_encode(external_email_address.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_external_contact_external_email_address_get(external_email_address:, service:)
        raise ArgumentError, 'external_email_address is required' if external_email_address.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/externalContact/{externalEmailAddress}'
            .gsub('{externalEmailAddress}', ERB::Util.url_encode(external_email_address.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_external_contact_external_email_address_put(external_email_address:, service:, email_mxplan_external_contact:)
        raise ArgumentError, 'external_email_address is required' if external_email_address.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_mxplan_external_contact is required' if email_mxplan_external_contact.nil?

        @connection.call(
          :PUT,
          '/email/mxplan/{service}/externalContact/{externalEmailAddress}'
            .gsub('{externalEmailAddress}', ERB::Util.url_encode(external_email_address.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_mxplan_external_contact
        )
      end

      def service_external_contact_get(service:, display_name: nil, external_email_address: nil, first_name: nil, id: nil, last_name: nil)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/externalContact'
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
          '/email/mxplan/{service}/externalContact'
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
          '/email/mxplan/{service}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_put(service:, email_mxplan_service:)
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'email_mxplan_service is required' if email_mxplan_service.nil?

        @connection.call(
          :PUT,
          '/email/mxplan/{service}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: email_mxplan_service
        )
      end

      def service_server_get(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/server'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_task_get(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/task'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_task_id_get(id:, service:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/email/mxplan/{service}/task/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_update_flags_on_all_accounts_post(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :POST,
          '/email/mxplan/{service}/updateFlagsOnAllAccounts'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
