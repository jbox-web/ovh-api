# frozen_string_literal: true

module Ovh::Api
  module Api
    class Email::Domain
      def initialize(connection)
        @connection = connection
      end

      def delegated_account_email_change_password_post(email:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/delegatedAccount/{email}/changePassword'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delegated_account_email_filter_get(email:)
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/domain/delegatedAccount/{email}/filter'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_filter_name_change_activity_post(email:, name:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/delegatedAccount/{email}/filter/{name}/changeActivity'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delegated_account_email_filter_name_change_priority_post(email:, name:, body:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/delegatedAccount/{email}/filter/{name}/changePriority'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delegated_account_email_filter_name_delete(email:, name:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :DELETE,
          '/email/domain/delegatedAccount/{email}/filter/{name}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_filter_name_get(email:, name:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/delegatedAccount/{email}/filter/{name}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_filter_name_rule_get(email:, name:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/delegatedAccount/{email}/filter/{name}/rule'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_filter_name_rule_id_delete(email:, id:, name:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :DELETE,
          '/email/domain/delegatedAccount/{email}/filter/{name}/rule/{id}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_filter_name_rule_id_get(email:, id:, name:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/delegatedAccount/{email}/filter/{name}/rule/{id}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_filter_name_rule_post(email:, name:, email_domain_delegated_account_email_filter_name_rule_post_request:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'email_domain_delegated_account_email_filter_name_rule_post_request is required' if email_domain_delegated_account_email_filter_name_rule_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/delegatedAccount/{email}/filter/{name}/rule'
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: email_domain_delegated_account_email_filter_name_rule_post_request
        )
      end

      def delegated_account_email_filter_post(email:, email_domain_delegated_account_email_filter_post_request:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'email_domain_delegated_account_email_filter_post_request is required' if email_domain_delegated_account_email_filter_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/delegatedAccount/{email}/filter'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: [],
          body: email_domain_delegated_account_email_filter_post_request
        )
      end

      def delegated_account_email_get(email:)
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/domain/delegatedAccount/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_put(email:, email_domain_account_delegated:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'email_domain_account_delegated is required' if email_domain_account_delegated.nil?

        @connection.call(
          :PUT,
          '/email/domain/delegatedAccount/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: [],
          body: email_domain_account_delegated
        )
      end

      def delegated_account_email_responder_delete(email:)
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :DELETE,
          '/email/domain/delegatedAccount/{email}/responder'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_responder_get(email:)
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/email/domain/delegatedAccount/{email}/responder'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_responder_post(email:, email_domain_delegated_account_email_responder_post_request:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'email_domain_delegated_account_email_responder_post_request is required' if email_domain_delegated_account_email_responder_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/delegatedAccount/{email}/responder'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: [],
          body: email_domain_delegated_account_email_responder_post_request
        )
      end

      def delegated_account_email_responder_put(email:, email_domain_responder_account:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'email_domain_responder_account is required' if email_domain_responder_account.nil?

        @connection.call(
          :PUT,
          '/email/domain/delegatedAccount/{email}/responder'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: [],
          body: email_domain_responder_account
        )
      end

      def delegated_account_email_update_usage_post(email:)
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :POST,
          '/email/domain/delegatedAccount/{email}/updateUsage'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_email_usage_post(email:)
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :POST,
          '/email/domain/delegatedAccount/{email}/usage'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def delegated_account_get(account_name: nil, domain: nil)
        @connection.call(
          :GET,
          '/email/domain/delegatedAccount',
          type: nil,
          auth: [],
          query: { 'accountName' => account_name, 'domain' => domain }
        )
      end

      def domain_account_account_name_change_password_post(account_name:, domain:, body:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/account/{accountName}/changePassword'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def domain_account_account_name_delegation_account_id_delete(account_id:, account_name:, domain:)
        raise ArgumentError, 'account_id is required' if account_id.nil?
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/account/{accountName}/delegation/{accountId}'
            .gsub('{accountId}', ERB::Util.url_encode(account_id.to_s))
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_delegation_account_id_get(account_id:, account_name:, domain:)
        raise ArgumentError, 'account_id is required' if account_id.nil?
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/delegation/{accountId}'
            .gsub('{accountId}', ERB::Util.url_encode(account_id.to_s))
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_delegation_get(account_name:, domain:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/delegation'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_delegation_post(account_name:, domain:, body:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/account/{accountName}/delegation'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def domain_account_account_name_delete(account_name:, domain:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/account/{accountName}'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_filter_get(account_name:, domain:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/filter'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_filter_name_change_activity_post(account_name:, domain:, name:, body:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/account/{accountName}/filter/{name}/changeActivity'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def domain_account_account_name_filter_name_change_priority_post(account_name:, domain:, name:, body:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/account/{accountName}/filter/{name}/changePriority'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def domain_account_account_name_filter_name_delete(account_name:, domain:, name:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/account/{accountName}/filter/{name}'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_filter_name_get(account_name:, domain:, name:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/filter/{name}'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_filter_name_rule_get(account_name:, domain:, name:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/filter/{name}/rule'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_filter_name_rule_id_delete(account_name:, domain:, id:, name:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/account/{accountName}/filter/{name}/rule/{id}'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_filter_name_rule_id_get(account_name:, domain:, id:, name:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/filter/{name}/rule/{id}'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_filter_name_rule_post(account_name:, domain:, name:, email_domain_delegated_account_email_filter_name_rule_post_request:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'email_domain_delegated_account_email_filter_name_rule_post_request is required' if email_domain_delegated_account_email_filter_name_rule_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/account/{accountName}/filter/{name}/rule'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: email_domain_delegated_account_email_filter_name_rule_post_request
        )
      end

      def domain_account_account_name_filter_post(account_name:, domain:, email_domain_delegated_account_email_filter_post_request:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email_domain_delegated_account_email_filter_post_request is required' if email_domain_delegated_account_email_filter_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/account/{accountName}/filter'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: email_domain_delegated_account_email_filter_post_request
        )
      end

      def domain_account_account_name_get(account_name:, domain:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_migrate_destination_service_name_destination_email_address_destination_email_address_check_migrate_get(account_name:, destination_email_address:, destination_service_name:, domain:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'destination_email_address is required' if destination_email_address.nil?
        raise ArgumentError, 'destination_service_name is required' if destination_service_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/migrate/{destinationServiceName}/destinationEmailAddress/{destinationEmailAddress}/checkMigrate'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{destinationEmailAddress}', ERB::Util.url_encode(destination_email_address.to_s))
            .gsub('{destinationServiceName}', ERB::Util.url_encode(destination_service_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_migrate_destination_service_name_destination_email_address_destination_email_address_get(account_name:, destination_email_address:, destination_service_name:, domain:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'destination_email_address is required' if destination_email_address.nil?
        raise ArgumentError, 'destination_service_name is required' if destination_service_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/migrate/{destinationServiceName}/destinationEmailAddress/{destinationEmailAddress}'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{destinationEmailAddress}', ERB::Util.url_encode(destination_email_address.to_s))
            .gsub('{destinationServiceName}', ERB::Util.url_encode(destination_service_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_migrate_destination_service_name_destination_email_address_destination_email_address_migrate_post(account_name:, destination_email_address:, destination_service_name:, domain:, body:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'destination_email_address is required' if destination_email_address.nil?
        raise ArgumentError, 'destination_service_name is required' if destination_service_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/account/{accountName}/migrate/{destinationServiceName}/destinationEmailAddress/{destinationEmailAddress}/migrate'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{destinationEmailAddress}', ERB::Util.url_encode(destination_email_address.to_s))
            .gsub('{destinationServiceName}', ERB::Util.url_encode(destination_service_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def domain_account_account_name_migrate_destination_service_name_destination_email_address_get(account_name:, destination_service_name:, domain:, quota: nil)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'destination_service_name is required' if destination_service_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/migrate/{destinationServiceName}/destinationEmailAddress'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{destinationServiceName}', ERB::Util.url_encode(destination_service_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'quota' => quota }
        )
      end

      def domain_account_account_name_migrate_destination_service_name_get(account_name:, destination_service_name:, domain:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'destination_service_name is required' if destination_service_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/migrate/{destinationServiceName}'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{destinationServiceName}', ERB::Util.url_encode(destination_service_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_migrate_get(account_name:, domain:, type: nil)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/migrate'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def domain_account_account_name_put(account_name:, domain:, email_domain_account:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email_domain_account is required' if email_domain_account.nil?

        @connection.call(
          :PUT,
          '/email/domain/{domain}/account/{accountName}'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: email_domain_account
        )
      end

      def domain_account_account_name_update_usage_post(account_name:, domain:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/account/{accountName}/updateUsage'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_account_name_usage_get(account_name:, domain:)
        raise ArgumentError, 'account_name is required' if account_name.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account/{accountName}/usage'
            .gsub('{accountName}', ERB::Util.url_encode(account_name.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_account_get(domain:, account_name: nil, description: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/account'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'accountName' => account_name, 'description' => description }
        )
      end

      def domain_account_post(domain:, email_domain_domain_account_post_request:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email_domain_domain_account_post_request is required' if email_domain_domain_account_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/account'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: email_domain_domain_account_post_request
        )
      end

      def domain_acl_account_id_delete(account_id:, domain:)
        raise ArgumentError, 'account_id is required' if account_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/acl/{accountId}'
            .gsub('{accountId}', ERB::Util.url_encode(account_id.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_acl_account_id_get(account_id:, domain:)
        raise ArgumentError, 'account_id is required' if account_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/acl/{accountId}'
            .gsub('{accountId}', ERB::Util.url_encode(account_id.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_acl_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/acl'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_acl_post(domain:, body:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/acl'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def domain_change_contact_post(domain:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/changeContact'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_change_contact_post_request
        )
      end

      def domain_change_dns_mx_filter_post(domain:, email_domain_domain_change_dns_mx_filter_post_request:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email_domain_domain_change_dns_mx_filter_post_request is required' if email_domain_domain_change_dns_mx_filter_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/changeDnsMXFilter'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: email_domain_domain_change_dns_mx_filter_post_request
        )
      end

      def domain_confirm_termination_post(domain:, email_domain_domain_confirm_termination_post_request:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email_domain_domain_confirm_termination_post_request is required' if email_domain_domain_confirm_termination_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/confirmTermination'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: email_domain_domain_confirm_termination_post_request
        )
      end

      def domain_dkim_disable_put(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :PUT,
          '/email/domain/{domain}/dkim/disable'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_dkim_enable_put(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :PUT,
          '/email/domain/{domain}/dkim/enable'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_dkim_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/dkim'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_dns_mx_filter_get(domain:, sub_domain: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/dnsMXFilter'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'subDomain' => sub_domain }
        )
      end

      def domain_dns_mx_records_get(domain:, sub_domain: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/dnsMXRecords'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'subDomain' => sub_domain }
        )
      end

      def domain_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_mailing_list_get(domain:, name: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/mailingList'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name }
        )
      end

      def domain_mailing_list_name_change_options_post(domain:, name:, domain_domain_ml_options_struct:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'domain_domain_ml_options_struct is required' if domain_domain_ml_options_struct.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/mailingList/{name}/changeOptions'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: domain_domain_ml_options_struct
        )
      end

      def domain_mailing_list_name_delete(domain:, name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/mailingList/{name}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_mailing_list_name_get(domain:, name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/mailingList/{name}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_mailing_list_name_moderator_email_delete(domain:, email:, name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/mailingList/{name}/moderator/{email}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_mailing_list_name_moderator_email_get(domain:, email:, name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/mailingList/{name}/moderator/{email}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_mailing_list_name_moderator_get(domain:, name:, email: nil)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/mailingList/{name}/moderator'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          query: { 'email' => email }
        )
      end

      def domain_mailing_list_name_moderator_post(domain:, name:, body:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/mailingList/{name}/moderator'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def domain_mailing_list_name_put(domain:, name:, email_domain_mailing_list:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'email_domain_mailing_list is required' if email_domain_mailing_list.nil?

        @connection.call(
          :PUT,
          '/email/domain/{domain}/mailingList/{name}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: email_domain_mailing_list
        )
      end

      def domain_mailing_list_name_send_list_by_email_post(domain:, name:, body:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/mailingList/{name}/sendListByEmail'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def domain_mailing_list_name_subscriber_email_delete(domain:, email:, name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/mailingList/{name}/subscriber/{email}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_mailing_list_name_subscriber_email_get(domain:, email:, name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/mailingList/{name}/subscriber/{email}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{email}', ERB::Util.url_encode(email.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_mailing_list_name_subscriber_get(domain:, name:, email: nil)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/mailingList/{name}/subscriber'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          query: { 'email' => email }
        )
      end

      def domain_mailing_list_name_subscriber_post(domain:, name:, body:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/mailingList/{name}/subscriber'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def domain_mailing_list_post(domain:, email_domain_domain_mailing_list_post_request:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email_domain_domain_mailing_list_post_request is required' if email_domain_domain_mailing_list_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/mailingList'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: email_domain_domain_mailing_list_post_request
        )
      end

      def domain_migrate_delegation_v3to_v6_post(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/migrateDelegationV3toV6'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_quota_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/quota'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_recommended_dns_records_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/recommendedDNSRecords'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_redirection_get(domain:, from: nil, to: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/redirection'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'from' => from, 'to' => to }
        )
      end

      def domain_redirection_id_change_redirection_post(domain:, id:, email_domain_redirection_change_redirection_creation:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'email_domain_redirection_change_redirection_creation is required' if email_domain_redirection_change_redirection_creation.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/redirection/{id}/changeRedirection'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: email_domain_redirection_change_redirection_creation
        )
      end

      def domain_redirection_id_delete(domain:, id:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/redirection/{id}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_redirection_id_get(domain:, id:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/redirection/{id}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_redirection_post(domain:, email_domain_redirection_creation:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email_domain_redirection_creation is required' if email_domain_redirection_creation.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/redirection'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: email_domain_redirection_creation
        )
      end

      def domain_responder_account_delete(account:, domain:)
        raise ArgumentError, 'account is required' if account.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :DELETE,
          '/email/domain/{domain}/responder/{account}'
            .gsub('{account}', ERB::Util.url_encode(account.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_responder_account_get(account:, domain:)
        raise ArgumentError, 'account is required' if account.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/responder/{account}'
            .gsub('{account}', ERB::Util.url_encode(account.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_responder_account_put(account:, domain:, email_domain_responder:)
        raise ArgumentError, 'account is required' if account.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email_domain_responder is required' if email_domain_responder.nil?

        @connection.call(
          :PUT,
          '/email/domain/{domain}/responder/{account}'
            .gsub('{account}', ERB::Util.url_encode(account.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: email_domain_responder
        )
      end

      def domain_responder_get(domain:, account: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/responder'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'account' => account }
        )
      end

      def domain_responder_post(domain:, email_domain_domain_responder_post_request:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'email_domain_domain_responder_post_request is required' if email_domain_domain_responder_post_request.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/responder'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: email_domain_domain_responder_post_request
        )
      end

      def domain_service_infos_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/serviceInfos'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_service_infos_put(domain:, services_service:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/email/domain/{domain}/serviceInfos'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def domain_summary_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/summary'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_task_account_get(domain:, name: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/account'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name }
        )
      end

      def domain_task_account_id_get(domain:, id:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/account/{id}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_task_all_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/all'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_task_all_id_get(domain:, id:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/all/{id}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_task_filter_get(domain:, account: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/filter'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'account' => account }
        )
      end

      def domain_task_filter_id_get(domain:, id:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/filter/{id}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_task_mailinglist_get(domain:, account: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/mailinglist'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'account' => account }
        )
      end

      def domain_task_mailinglist_id_get(domain:, id:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/mailinglist/{id}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_task_redirection_get(domain:, account: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/redirection'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'account' => account }
        )
      end

      def domain_task_redirection_id_get(domain:, id:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/redirection/{id}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_task_responder_get(domain:, account: nil)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/responder'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'account' => account }
        )
      end

      def domain_task_responder_id_get(domain:, id:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/email/domain/{domain}/task/responder/{id}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_terminate_post(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :POST,
          '/email/domain/{domain}/terminate'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/email/domain',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def mailing_list_limits_get(moderator_message:)
        raise ArgumentError, 'moderator_message is required' if moderator_message.nil?

        @connection.call(
          :GET,
          '/email/domain/mailingListLimits',
          type: nil,
          auth: [],
          query: { 'moderatorMessage' => moderator_message }
        )
      end
    end
  end
end
