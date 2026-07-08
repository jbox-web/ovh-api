# frozen_string_literal: true

module Ovh::Api
  module Api
    class Email::Exchange
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/email/exchange',
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_get(exchange_service:, organization_name:, account_license: nil, company: nil, id: nil, primary_email_address: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'accountLicense' => account_license, 'company' => company, 'id' => id, 'primaryEmailAddress' => primary_email_address }
        )
      end

      def organization_name_service_exchange_service_account_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_acco_hb745f885:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_acco_hb745f885 is required' if email_exchange_organization_name_service_exchange_service_acco_hb745f885.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_acco_hb745f885
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_alias_alias_delete(alias_:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_alias_alias_get(alias_:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_alias_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/alias'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_alias_post(exchange_service:, organization_name:, primary_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/alias'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_archive_delete(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/archive'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_archive_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/archive'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_archive_post(exchange_service:, organization_name:, primary_email_address:, body: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/archive'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_archive_put(exchange_service:, organization_name:, primary_email_address:, email_exchange_exchange_account_archive:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'email_exchange_exchange_account_archive is required' if email_exchange_exchange_account_archive.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/archive'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_exchange_account_archive
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_change_password_post(exchange_service:, organization_name:, primary_email_address:, email_exchange_organization_name_service_exchange_service_acco_h609e4138: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/changePassword'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_acco_h609e4138
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_delete(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_diagnostics_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/diagnostics'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_diagnostics_post(exchange_service:, organization_name:, primary_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/diagnostics'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_export_delete(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/export'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_export_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/export'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_export_post(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/export'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_export_url_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/exportURL'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_export_url_post(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/exportURL'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_full_access_allowed_account_id_delete(allowed_account_id:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/fullAccess/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_full_access_allowed_account_id_get(allowed_account_id:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/fullAccess/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_full_access_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/fullAccess'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_full_access_post(exchange_service:, organization_name:, primary_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/fullAccess'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_outlook_url_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/outlookURL'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_outlook_url_post(exchange_service:, organization_name:, primary_email_address:, email_exchange_organization_name_service_exchange_service_acco_hfd67ec4b:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_acco_hfd67ec4b is required' if email_exchange_organization_name_service_exchange_service_acco_hfd67ec4b.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/outlookURL'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_acco_hfd67ec4b
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_protocol_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/protocol'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_protocol_put(exchange_service:, organization_name:, primary_email_address:, email_exchange_exchange_account_protocol:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'email_exchange_exchange_account_protocol is required' if email_exchange_exchange_account_protocol.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/protocol'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_exchange_account_protocol
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_put(exchange_service:, organization_name:, primary_email_address:, email_exchange_account:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'email_exchange_account is required' if email_exchange_account.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_account
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_send_as_allowed_account_id_delete(allowed_account_id:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/sendAs/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_send_as_allowed_account_id_get(allowed_account_id:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/sendAs/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_send_as_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/sendAs'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_send_as_post(exchange_service:, organization_name:, primary_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/sendAs'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_send_on_behalf_to_allowed_account_id_delete(allowed_account_id:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_send_on_behalf_to_allowed_account_id_get(allowed_account_id:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_send_on_behalf_to_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/sendOnBehalfTo'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_send_on_behalf_to_post(exchange_service:, organization_name:, primary_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/sendOnBehalfTo'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_tasks_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/tasks'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_tasks_id_get(exchange_service:, id:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/tasks/{id}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_account_primary_email_address_terminate_post(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/account/{primaryEmailAddress}/terminate'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_activate_sharepoint_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_acti_h6dec81e0:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_acti_h6dec81e0 is required' if email_exchange_organization_name_service_exchange_service_acti_h6dec81e0.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/activateSharepoint'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_acti_h6dec81e0
        )
      end

      def organization_name_service_exchange_service_authentication_policy_get(exchange_service:, organization_name:, block_legacy_auth_active_sync: nil, block_legacy_auth_autodiscover: nil, block_legacy_auth_imap: nil, block_legacy_auth_mapi: nil, block_legacy_auth_offline_address_book: nil, block_legacy_auth_pop: nil, block_legacy_auth_web_services: nil, block_modern_auth_active_sync: nil, block_modern_auth_autodiscover: nil, block_modern_auth_imap: nil, block_modern_auth_mapi: nil, block_modern_auth_offline_address_book: nil, block_modern_auth_pop: nil, block_modern_auth_web_services: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/authenticationPolicy'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'blockLegacyAuthActiveSync' => block_legacy_auth_active_sync, 'blockLegacyAuthAutodiscover' => block_legacy_auth_autodiscover, 'blockLegacyAuthImap' => block_legacy_auth_imap, 'blockLegacyAuthMapi' => block_legacy_auth_mapi, 'blockLegacyAuthOfflineAddressBook' => block_legacy_auth_offline_address_book, 'blockLegacyAuthPop' => block_legacy_auth_pop, 'blockLegacyAuthWebServices' => block_legacy_auth_web_services, 'blockModernAuthActiveSync' => block_modern_auth_active_sync, 'blockModernAuthAutodiscover' => block_modern_auth_autodiscover, 'blockModernAuthImap' => block_modern_auth_imap, 'blockModernAuthMapi' => block_modern_auth_mapi, 'blockModernAuthOfflineAddressBook' => block_modern_auth_offline_address_book, 'blockModernAuthPop' => block_modern_auth_pop, 'blockModernAuthWebServices' => block_modern_auth_web_services }
        )
      end

      def organization_name_service_exchange_service_authentication_policy_id_get(exchange_service:, id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/authenticationPolicy/{id}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_authorized_ip_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/authorizedIp'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_authorized_ip_ip_delete(exchange_service:, ip:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/authorizedIp/{ip}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_authorized_ip_ip_get(exchange_service:, ip:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/authorizedIp/{ip}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_authorized_ip_ip_put(exchange_service:, ip:, organization_name:, email_exchange_exchange_service_authorized_ip:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_exchange_service_authorized_ip is required' if email_exchange_exchange_service_authorized_ip.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/authorizedIp/{ip}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_exchange_service_authorized_ip
        )
      end

      def organization_name_service_exchange_service_authorized_ip_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_auth_h59f9e112:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_auth_h59f9e112 is required' if email_exchange_organization_name_service_exchange_service_auth_h59f9e112.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/authorizedIp'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_auth_h59f9e112
        )
      end

      def organization_name_service_exchange_service_change_hostname_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_chan_he51654b9:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_chan_he51654b9 is required' if email_exchange_organization_name_service_exchange_service_chan_he51654b9.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/changeHostname'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_chan_he51654b9
        )
      end

      def organization_name_service_exchange_service_custom_isolation_get(exchange_service:, organization_name:, isolation_field: nil, isolation_value: nil, name: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/customIsolation'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'isolationField' => isolation_field, 'isolationValue' => isolation_value, 'name' => name }
        )
      end

      def organization_name_service_exchange_service_custom_isolation_name_delete(exchange_service:, name:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/customIsolation/{name}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_custom_isolation_name_get(exchange_service:, name:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/customIsolation/{name}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_custom_isolation_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_cust_h52184c6b:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_cust_h52184c6b is required' if email_exchange_organization_name_service_exchange_service_cust_h52184c6b.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/customIsolation'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_cust_h52184c6b
        )
      end

      def organization_name_service_exchange_service_dcv_emails_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/dcvEmails'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_device_get(exchange_service:, organization_name:, imei: nil, device_state: nil, identity: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/device'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'IMEI' => imei, 'deviceState' => device_state, 'identity' => identity }
        )
      end

      def organization_name_service_exchange_service_device_identity_clear_device_post(exchange_service:, identity:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'identity is required' if identity.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/device/{identity}/clearDevice'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{identity}', ERB::Util.url_encode(identity.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_device_identity_get(exchange_service:, identity:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'identity is required' if identity.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/device/{identity}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{identity}', ERB::Util.url_encode(identity.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_device_identity_put(exchange_service:, identity:, organization_name:, email_exchange_exchange_service_device:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'identity is required' if identity.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_exchange_service_device is required' if email_exchange_exchange_service_device.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/device/{identity}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{identity}', ERB::Util.url_encode(identity.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_exchange_service_device
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_change_default_sbr_put(domain_name:, exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_doma_h641c51b8: nil)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/changeDefaultSBR'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_doma_h641c51b8
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_delete(domain_name:, exchange_service:, organization_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_disclaimer_attribute_get(domain_name:, exchange_service:, organization_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/disclaimerAttribute'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_disclaimer_delete(domain_name:, exchange_service:, organization_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_disclaimer_get(domain_name:, exchange_service:, organization_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_disclaimer_post(domain_name:, exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_doma_h2c9d9cb2:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_doma_h2c9d9cb2 is required' if email_exchange_organization_name_service_exchange_service_doma_h2c9d9cb2.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_doma_h2c9d9cb2
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_disclaimer_put(domain_name:, exchange_service:, organization_name:, email_exchange_disclaimer:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_disclaimer is required' if email_exchange_disclaimer.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/disclaimer'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_disclaimer
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_dkim_get(domain_name:, exchange_service:, organization_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/dkim'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_dkim_post(domain_name:, exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_doma_h39027816:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_doma_h39027816 is required' if email_exchange_organization_name_service_exchange_service_doma_h39027816.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/dkim'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_doma_h39027816
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_dkim_selector_get(domain_name:, exchange_service:, organization_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/dkimSelector'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_dkim_selector_name_delete(domain_name:, exchange_service:, organization_name:, selector_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'selector_name is required' if selector_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/dkim/{selectorName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{selectorName}', ERB::Util.url_encode(selector_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_dkim_selector_name_disable_post(domain_name:, exchange_service:, organization_name:, selector_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'selector_name is required' if selector_name.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/dkim/{selectorName}/disable'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{selectorName}', ERB::Util.url_encode(selector_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_dkim_selector_name_enable_post(domain_name:, exchange_service:, organization_name:, selector_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'selector_name is required' if selector_name.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/dkim/{selectorName}/enable'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{selectorName}', ERB::Util.url_encode(selector_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_dkim_selector_name_get(domain_name:, exchange_service:, organization_name:, selector_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'selector_name is required' if selector_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}/dkim/{selectorName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{selectorName}', ERB::Util.url_encode(selector_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_get(domain_name:, exchange_service:, organization_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_domain_domain_name_put(domain_name:, exchange_service:, organization_name:, email_exchange_domain:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_domain is required' if email_exchange_domain.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain/{domainName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_domain
        )
      end

      def organization_name_service_exchange_service_domain_get(exchange_service:, organization_name:, main: nil, state: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'main' => main, 'state' => state }
        )
      end

      def organization_name_service_exchange_service_domain_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_doma_h31775dd2:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_doma_h31775dd2 is required' if email_exchange_organization_name_service_exchange_service_doma_h31775dd2.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/domain'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_doma_h31775dd2
        )
      end

      def organization_name_service_exchange_service_external_contact_external_email_address_delete(exchange_service:, external_email_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'external_email_address is required' if external_email_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/externalContact/{externalEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{externalEmailAddress}', ERB::Util.url_encode(external_email_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_external_contact_external_email_address_get(exchange_service:, external_email_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'external_email_address is required' if external_email_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/externalContact/{externalEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{externalEmailAddress}', ERB::Util.url_encode(external_email_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_external_contact_external_email_address_put(exchange_service:, external_email_address:, organization_name:, email_exchange_exchange_external_contact:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'external_email_address is required' if external_email_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_exchange_external_contact is required' if email_exchange_exchange_external_contact.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/externalContact/{externalEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{externalEmailAddress}', ERB::Util.url_encode(external_email_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_exchange_external_contact
        )
      end

      def organization_name_service_exchange_service_external_contact_get(exchange_service:, organization_name:, display_name: nil, external_email_address: nil, first_name: nil, id: nil, last_name: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/externalContact'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'displayName' => display_name, 'externalEmailAddress' => external_email_address, 'firstName' => first_name, 'id' => id, 'lastName' => last_name }
        )
      end

      def organization_name_service_exchange_service_external_contact_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_exte_hbe16561f:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_exte_hbe16561f is required' if email_exchange_organization_name_service_exchange_service_exte_hbe16561f.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/externalContact'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_exte_hbe16561f
        )
      end

      def organization_name_service_exchange_service_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_impersonated_user_change_password_post(exchange_service:, organization_name:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/impersonatedUser/changePassword'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_impersonated_user_delete(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/impersonatedUser'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_impersonated_user_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/impersonatedUser'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_impersonated_user_post(exchange_service:, organization_name:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/impersonatedUser'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_impersonation_password_policy_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/impersonationPasswordPolicy'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_license_get(exchange_service:, organization_name:, from_date: nil, license: nil, to_date: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/license'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'fromDate' => from_date, 'license' => license, 'toDate' => to_date }
        )
      end

      def organization_name_service_exchange_service_log_kind_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/log/kind'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_log_kind_name_get(exchange_service:, organization_name:, name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/log/kind/{name}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_log_subscription_get(exchange_service:, organization_name:, kind: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/log/subscription'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def organization_name_service_exchange_service_log_subscription_post(exchange_service:, organization_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/log/subscription'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def organization_name_service_exchange_service_log_subscription_subscription_id_delete(exchange_service:, organization_name:, subscription_id:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/log/subscription/{subscriptionId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_log_subscription_subscription_id_get(exchange_service:, organization_name:, subscription_id:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/log/subscription/{subscriptionId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_log_url_post(exchange_service:, organization_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/log/url'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def organization_name_service_exchange_service_mailing_list_get(exchange_service:, organization_name:, company: nil, mailing_list_address: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'company' => company, 'mailingListAddress' => mailing_list_address }
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_alias_alias_delete(alias_:, exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_alias_alias_get(alias_:, exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_alias_get(exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/alias'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_alias_post(exchange_service:, mailing_list_address:, organization_name:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/alias'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_delete(exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_get(exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_manager_account_get(exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/manager/account'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_manager_account_manager_account_id_delete(exchange_service:, mailing_list_address:, manager_account_id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'manager_account_id is required' if manager_account_id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/manager/account/{managerAccountId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{managerAccountId}', ERB::Util.url_encode(manager_account_id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_manager_account_manager_account_id_get(exchange_service:, mailing_list_address:, manager_account_id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'manager_account_id is required' if manager_account_id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/manager/account/{managerAccountId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{managerAccountId}', ERB::Util.url_encode(manager_account_id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_manager_account_post(exchange_service:, mailing_list_address:, organization_name:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/manager/account'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_member_account_get(exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/member/account'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_member_account_member_account_id_delete(exchange_service:, mailing_list_address:, member_account_id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'member_account_id is required' if member_account_id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/member/account/{memberAccountId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{memberAccountId}', ERB::Util.url_encode(member_account_id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_member_account_member_account_id_get(exchange_service:, mailing_list_address:, member_account_id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'member_account_id is required' if member_account_id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/member/account/{memberAccountId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{memberAccountId}', ERB::Util.url_encode(member_account_id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_member_account_post(exchange_service:, mailing_list_address:, organization_name:, email_exchange_organization_name_service_exchange_service_mail_h94d57c37: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/member/account'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_mail_h94d57c37
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_member_contact_get(exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/member/contact'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_member_contact_member_contact_id_delete(exchange_service:, mailing_list_address:, member_contact_id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'member_contact_id is required' if member_contact_id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/member/contact/{memberContactId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{memberContactId}', ERB::Util.url_encode(member_contact_id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_member_contact_member_contact_id_get(exchange_service:, mailing_list_address:, member_contact_id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'member_contact_id is required' if member_contact_id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/member/contact/{memberContactId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{memberContactId}', ERB::Util.url_encode(member_contact_id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_member_contact_post(exchange_service:, mailing_list_address:, organization_name:, email_exchange_organization_name_service_exchange_service_mail_h94d57c37: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/member/contact'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_mail_h94d57c37
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_put(exchange_service:, mailing_list_address:, organization_name:, email_exchange_mailing_list:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_mailing_list is required' if email_exchange_mailing_list.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_mailing_list
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_send_as_allowed_account_id_delete(allowed_account_id:, exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/sendAs/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_send_as_allowed_account_id_get(allowed_account_id:, exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/sendAs/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_send_as_get(exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/sendAs'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_send_as_post(exchange_service:, mailing_list_address:, organization_name:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/sendAs'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_send_on_behalf_to_allowed_account_id_delete(allowed_account_id:, exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_send_on_behalf_to_allowed_account_id_get(allowed_account_id:, exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_send_on_behalf_to_get(exchange_service:, mailing_list_address:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/sendOnBehalfTo'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_mailing_list_mailing_list_address_send_on_behalf_to_post(exchange_service:, mailing_list_address:, organization_name:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'mailing_list_address is required' if mailing_list_address.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList/{mailingListAddress}/sendOnBehalfTo'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{mailingListAddress}', ERB::Util.url_encode(mailing_list_address.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_mailing_list_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_mail_h5959988f:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_mail_h5959988f is required' if email_exchange_organization_name_service_exchange_service_mail_h5959988f.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/mailingList'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_mail_h5959988f
        )
      end

      def organization_name_service_exchange_service_outlook_availability_get(exchange_service:, organization_name:, outlook_language: nil, outlook_version: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/outlookAvailability'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'outlookLanguage' => outlook_language, 'outlookVersion' => outlook_version }
        )
      end

      def organization_name_service_exchange_service_protocol_active_sync_mail_notification_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/protocol/activeSyncMailNotification'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_protocol_active_sync_mail_notification_notified_account_id_delete(exchange_service:, notified_account_id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'notified_account_id is required' if notified_account_id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/protocol/activeSyncMailNotification/{notifiedAccountId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{notifiedAccountId}', ERB::Util.url_encode(notified_account_id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_protocol_active_sync_mail_notification_notified_account_id_get(exchange_service:, notified_account_id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'notified_account_id is required' if notified_account_id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/protocol/activeSyncMailNotification/{notifiedAccountId}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{notifiedAccountId}', ERB::Util.url_encode(notified_account_id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_protocol_active_sync_mail_notification_post(exchange_service:, organization_name:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/protocol/activeSyncMailNotification'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_protocol_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/protocol'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_protocol_put(exchange_service:, organization_name:, email_exchange_exchange_service_protocol:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_exchange_service_protocol is required' if email_exchange_exchange_service_protocol.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/protocol'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_exchange_service_protocol
        )
      end

      def organization_name_service_exchange_service_public_folder_get(exchange_service:, organization_name:, path: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'path' => path }
        )
      end

      def organization_name_service_exchange_service_public_folder_path_delete(exchange_service:, organization_name:, path:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'path is required' if path.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder/{path}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{path}', ERB::Util.url_encode(path.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_public_folder_path_get(exchange_service:, organization_name:, path:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'path is required' if path.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder/{path}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{path}', ERB::Util.url_encode(path.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_public_folder_path_permission_allowed_account_id_delete(allowed_account_id:, exchange_service:, organization_name:, path:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'path is required' if path.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder/{path}/permission/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{path}', ERB::Util.url_encode(path.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_public_folder_path_permission_allowed_account_id_get(allowed_account_id:, exchange_service:, organization_name:, path:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'path is required' if path.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder/{path}/permission/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{path}', ERB::Util.url_encode(path.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_public_folder_path_permission_allowed_account_id_put(allowed_account_id:, exchange_service:, organization_name:, path:, email_exchange_exchange_public_folder_permission:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'path is required' if path.nil?
        raise ArgumentError, 'email_exchange_exchange_public_folder_permission is required' if email_exchange_exchange_public_folder_permission.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder/{path}/permission/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{path}', ERB::Util.url_encode(path.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_exchange_public_folder_permission
        )
      end

      def organization_name_service_exchange_service_public_folder_path_permission_get(exchange_service:, organization_name:, path:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'path is required' if path.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder/{path}/permission'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{path}', ERB::Util.url_encode(path.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_public_folder_path_permission_post(exchange_service:, organization_name:, path:, email_exchange_organization_name_service_exchange_service_publ_hca655c41:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'path is required' if path.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_publ_hca655c41 is required' if email_exchange_organization_name_service_exchange_service_publ_hca655c41.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder/{path}/permission'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{path}', ERB::Util.url_encode(path.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_publ_hca655c41
        )
      end

      def organization_name_service_exchange_service_public_folder_path_put(exchange_service:, organization_name:, path:, email_exchange_public_folder:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'path is required' if path.nil?
        raise ArgumentError, 'email_exchange_public_folder is required' if email_exchange_public_folder.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder/{path}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{path}', ERB::Util.url_encode(path.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_public_folder
        )
      end

      def organization_name_service_exchange_service_public_folder_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_publ_hd07e0a1d:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_publ_hd07e0a1d is required' if email_exchange_organization_name_service_exchange_service_publ_hd07e0a1d.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolder'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_publ_hd07e0a1d
        )
      end

      def organization_name_service_exchange_service_public_folder_quota_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/publicFolderQuota'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_put(exchange_service:, organization_name:, email_exchange_exchange_service:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_exchange_service is required' if email_exchange_exchange_service.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_exchange_service
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_get(exchange_service:, organization_name:, id: nil, primary_email_address: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'id' => id, 'primaryEmailAddress' => primary_email_address }
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_remo_hc1c4f062:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_remo_hc1c4f062 is required' if email_exchange_organization_name_service_exchange_service_remo_hc1c4f062.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_remo_hc1c4f062
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_primary_email_address_alias_alias_delete(alias_:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox/{primaryEmailAddress}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_primary_email_address_alias_alias_get(alias_:, exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox/{primaryEmailAddress}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_primary_email_address_alias_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox/{primaryEmailAddress}/alias'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_primary_email_address_alias_post(exchange_service:, organization_name:, primary_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox/{primaryEmailAddress}/alias'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_primary_email_address_change_password_post(exchange_service:, organization_name:, primary_email_address:, email_exchange_organization_name_service_exchange_service_acco_h609e4138: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox/{primaryEmailAddress}/changePassword'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_acco_h609e4138
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_primary_email_address_delete(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox/{primaryEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_primary_email_address_get(exchange_service:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox/{primaryEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_remote_mailbox_primary_email_address_put(exchange_service:, organization_name:, primary_email_address:, email_exchange_exchange_remote_mailbox:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?
        raise ArgumentError, 'email_exchange_exchange_remote_mailbox is required' if email_exchange_exchange_remote_mailbox.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/remoteMailbox/{primaryEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{primaryEmailAddress}', ERB::Util.url_encode(primary_email_address.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_exchange_remote_mailbox
        )
      end

      def organization_name_service_exchange_service_renew_ssl_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_rene_h02d1c919: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/renewSSL'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_rene_h02d1c919
        )
      end

      def organization_name_service_exchange_service_resource_account_get(exchange_service:, organization_name:, company: nil, resource_email_address: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/resourceAccount'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'company' => company, 'resourceEmailAddress' => resource_email_address }
        )
      end

      def organization_name_service_exchange_service_resource_account_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_reso_h670e7dc1:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_reso_h670e7dc1 is required' if email_exchange_organization_name_service_exchange_service_reso_h670e7dc1.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/resourceAccount'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_reso_h670e7dc1
        )
      end

      def organization_name_service_exchange_service_resource_account_resource_email_address_delegate_allowed_account_id_delete(allowed_account_id:, exchange_service:, organization_name:, resource_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'resource_email_address is required' if resource_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/resourceAccount/{resourceEmailAddress}/delegate/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{resourceEmailAddress}', ERB::Util.url_encode(resource_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_resource_account_resource_email_address_delegate_allowed_account_id_get(allowed_account_id:, exchange_service:, organization_name:, resource_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'resource_email_address is required' if resource_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/resourceAccount/{resourceEmailAddress}/delegate/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{resourceEmailAddress}', ERB::Util.url_encode(resource_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_resource_account_resource_email_address_delegate_get(exchange_service:, organization_name:, resource_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'resource_email_address is required' if resource_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/resourceAccount/{resourceEmailAddress}/delegate'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{resourceEmailAddress}', ERB::Util.url_encode(resource_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_resource_account_resource_email_address_delegate_post(exchange_service:, organization_name:, resource_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'resource_email_address is required' if resource_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/resourceAccount/{resourceEmailAddress}/delegate'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{resourceEmailAddress}', ERB::Util.url_encode(resource_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_resource_account_resource_email_address_delete(exchange_service:, organization_name:, resource_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'resource_email_address is required' if resource_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/resourceAccount/{resourceEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{resourceEmailAddress}', ERB::Util.url_encode(resource_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_resource_account_resource_email_address_get(exchange_service:, organization_name:, resource_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'resource_email_address is required' if resource_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/resourceAccount/{resourceEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{resourceEmailAddress}', ERB::Util.url_encode(resource_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_resource_account_resource_email_address_put(exchange_service:, organization_name:, resource_email_address:, email_exchange_resource_account:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'resource_email_address is required' if resource_email_address.nil?
        raise ArgumentError, 'email_exchange_resource_account is required' if email_exchange_resource_account.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/resourceAccount/{resourceEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{resourceEmailAddress}', ERB::Util.url_encode(resource_email_address.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_resource_account
        )
      end

      def organization_name_service_exchange_service_send_connector_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sendConnector'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_send_connector_id_change_authentication_post(exchange_service:, id:, organization_name:, email_exchange_organization_name_service_exchange_service_send_h89e3e6a0: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/sendConnector/{id}/changeAuthentication'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_send_h89e3e6a0
        )
      end

      def organization_name_service_exchange_service_send_connector_id_delete(exchange_service:, id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/sendConnector/{id}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_send_connector_id_get(exchange_service:, id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sendConnector/{id}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_send_connector_id_put(exchange_service:, id:, organization_name:, email_exchange_send_connector:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_send_connector is required' if email_exchange_send_connector.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/sendConnector/{id}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_send_connector
        )
      end

      def organization_name_service_exchange_service_send_connector_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_send_h2ef424fb:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_send_h2ef424fb is required' if email_exchange_organization_name_service_exchange_service_send_h2ef424fb.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/sendConnector'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_send_h2ef424fb
        )
      end

      def organization_name_service_exchange_service_server_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/server'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_server_put(exchange_service:, organization_name:, email_exchange_server:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_server is required' if email_exchange_server.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/server'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_server
        )
      end

      def organization_name_service_exchange_service_service_infos_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/serviceInfos'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_service_infos_put(exchange_service:, organization_name:, services_service:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/serviceInfos'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def organization_name_service_exchange_service_shared_account_get(exchange_service:, organization_name:, shared_email_address: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'sharedEmailAddress' => shared_email_address }
        )
      end

      def organization_name_service_exchange_service_shared_account_post(exchange_service:, organization_name:, email_exchange_organization_name_service_exchange_service_shar_hcb57d0f4:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'email_exchange_organization_name_service_exchange_service_shar_hcb57d0f4 is required' if email_exchange_organization_name_service_exchange_service_shar_hcb57d0f4.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_organization_name_service_exchange_service_shar_hcb57d0f4
        )
      end

      def organization_name_service_exchange_service_shared_account_quota_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccountQuota'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_alias_alias_delete(alias_:, exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_alias_alias_get(alias_:, exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_alias_get(exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/alias'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_alias_post(exchange_service:, organization_name:, shared_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/alias'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_delete(exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_full_access_allowed_account_id_delete(allowed_account_id:, exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/fullAccess/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_full_access_allowed_account_id_get(allowed_account_id:, exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/fullAccess/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_full_access_get(exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/fullAccess'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_full_access_post(exchange_service:, organization_name:, shared_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/fullAccess'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_get(exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_put(exchange_service:, organization_name:, shared_email_address:, email_exchange_shared_account:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?
        raise ArgumentError, 'email_exchange_shared_account is required' if email_exchange_shared_account.nil?

        @connection.call(
          :PUT,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: [],
          body: email_exchange_shared_account
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_send_as_allowed_account_id_delete(allowed_account_id:, exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/sendAs/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_send_as_allowed_account_id_get(allowed_account_id:, exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/sendAs/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_send_as_get(exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/sendAs'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_send_as_post(exchange_service:, organization_name:, shared_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/sendAs'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_send_on_behalf_to_allowed_account_id_delete(allowed_account_id:, exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :DELETE,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_send_on_behalf_to_allowed_account_id_get(allowed_account_id:, exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'allowed_account_id is required' if allowed_account_id.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/sendOnBehalfTo/{allowedAccountId}'
            .gsub('{allowedAccountId}', ERB::Util.url_encode(allowed_account_id.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_send_on_behalf_to_get(exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/sendOnBehalfTo'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_send_on_behalf_to_post(exchange_service:, organization_name:, shared_email_address:, body:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/sendOnBehalfTo'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_tasks_get(exchange_service:, organization_name:, shared_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/tasks'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_shared_account_shared_email_address_tasks_id_get(exchange_service:, id:, organization_name:, shared_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'shared_email_address is required' if shared_email_address.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/sharedAccount/{sharedEmailAddress}/tasks/{id}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s))
            .gsub('{sharedEmailAddress}', ERB::Util.url_encode(shared_email_address.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_task_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/task'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_task_id_get(exchange_service:, id:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service/{exchangeService}/task/{id}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_update_device_list_post(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/updateDeviceList'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_exchange_service_update_flags_on_all_accounts_post(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :POST,
          '/email/exchange/{organizationName}/service/{exchangeService}/updateFlagsOnAllAccounts'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def organization_name_service_get(organization_name:, iam_tags: nil)
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/email/exchange/{organizationName}/service'
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end
    end
  end
end
