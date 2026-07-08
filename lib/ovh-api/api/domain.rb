# frozen_string_literal: true

module Ovh::Api
  module Api
    class Domain
      def initialize(connection)
        @connection = connection
      end

      def configuration_rule_check_post(action:, domain:, domain_configuration_rules_rule_data:)
        raise ArgumentError, 'action is required' if action.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'domain_configuration_rules_rule_data is required' if domain_configuration_rules_rule_data.nil?

        @connection.call(
          :POST,
          '/domain/configurationRule/check',
          type: nil,
          auth: [],
          query: { 'action' => action, 'domain' => domain },
          body: domain_configuration_rules_rule_data
        )
      end

      def configuration_rule_get(action:, domain:)
        raise ArgumentError, 'action is required' if action.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/domain/configurationRule',
          type: nil,
          auth: [],
          query: { 'action' => action, 'domain' => domain }
        )
      end

      def data_claim_notice_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/domain/data/claimNotice',
          type: nil,
          auth: [],
          query: { 'domain' => domain }
        )
      end

      def data_extension_get(country: nil)
        @connection.call(
          :GET,
          '/domain/data/extension',
          type: nil,
          auth: [],
          query: { 'country' => country }
        )
      end

      def data_smd_get
        @connection.call(
          :GET,
          '/domain/data/smd',
          type: nil,
          auth: []
        )
      end

      def data_smd_post(domain_data_smd_smd_body:)
        raise ArgumentError, 'domain_data_smd_smd_body is required' if domain_data_smd_smd_body.nil?

        @connection.call(
          :POST,
          '/domain/data/smd',
          type: nil,
          auth: [],
          body: domain_data_smd_smd_body
        )
      end

      def data_smd_smd_id_delete(smd_id:)
        raise ArgumentError, 'smd_id is required' if smd_id.nil?

        @connection.call(
          :DELETE,
          '/domain/data/smd/{smdId}'
            .gsub('{smdId}', ERB::Util.url_encode(smd_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def data_smd_smd_id_get(smd_id:)
        raise ArgumentError, 'smd_id is required' if smd_id.nil?

        @connection.call(
          :GET,
          '/domain/data/smd/{smdId}'
            .gsub('{smdId}', ERB::Util.url_encode(smd_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def data_smd_smd_id_put(smd_id:, domain_data_smd_smd_body:)
        raise ArgumentError, 'smd_id is required' if smd_id.nil?
        raise ArgumentError, 'domain_data_smd_smd_body is required' if domain_data_smd_smd_body.nil?

        @connection.call(
          :PUT,
          '/domain/data/smd/{smdId}'
            .gsub('{smdId}', ERB::Util.url_encode(smd_id.to_s)),
          type: nil,
          auth: [],
          body: domain_data_smd_smd_body
        )
      end

      def get(iam_tags: nil, whois_owner: nil)
        @connection.call(
          :GET,
          '/domain',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags, 'whoisOwner' => whois_owner }
        )
      end

      def service_name_auth_info_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/authInfo'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_change_contact_post(service_name:, services_change_contact:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_change_contact is required' if services_change_contact.nil?

        @connection.call(
          :POST,
          '/domain/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_change_contact
        )
      end

      def service_name_configurations_obfuscated_emails_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/configurations/obfuscatedEmails'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_configurations_obfuscated_emails_put(service_name:, domain_configurations_obfuscated_email_update_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_configurations_obfuscated_email_update_payload is required' if domain_configurations_obfuscated_email_update_payload.nil?

        @connection.call(
          :PUT,
          '/domain/{serviceName}/configurations/obfuscatedEmails'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: domain_configurations_obfuscated_email_update_payload
        )
      end

      def service_name_configurations_obfuscated_emails_refresh_post(service_name:, domain_configurations_obfuscated_email_refresh_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_configurations_obfuscated_email_refresh_payload is required' if domain_configurations_obfuscated_email_refresh_payload.nil?

        @connection.call(
          :POST,
          '/domain/{serviceName}/configurations/obfuscatedEmails/refresh'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: domain_configurations_obfuscated_email_refresh_payload
        )
      end

      def service_name_configurations_optin_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/configurations/optin'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_configurations_optin_put(service_name:, domain_configurations_optin_update_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_configurations_optin_update_payload is required' if domain_configurations_optin_update_payload.nil?

        @connection.call(
          :PUT,
          '/domain/{serviceName}/configurations/optin'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: domain_configurations_optin_update_payload
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_name_servers_update_post(service_name:, domain_name_server_update_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name_server_update_payload is required' if domain_name_server_update_payload.nil?

        @connection.call(
          :POST,
          '/domain/{serviceName}/nameServers/update'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: domain_name_server_update_payload
        )
      end

      def service_name_options_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/options'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_outgoing_transfer_approve_post(service_name:, domain_outgoing_transfer_approve:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_outgoing_transfer_approve is required' if domain_outgoing_transfer_approve.nil?

        @connection.call(
          :POST,
          '/domain/{serviceName}/outgoingTransfer/approve'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: domain_outgoing_transfer_approve
        )
      end

      def service_name_put(service_name:, domain_domain_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_domain_service is required' if domain_domain_service.nil?

        @connection.call(
          :PUT,
          '/domain/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: domain_domain_service
        )
      end

      def service_name_rules_emails_obfuscation_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/rules/emailsObfuscation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_rules_optin_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/rules/optin'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_put(service_name:, services_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/domain/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_uk_outgoing_transfer_post(service_name:, domain_uk_registrar:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_uk_registrar is required' if domain_uk_registrar.nil?

        @connection.call(
          :POST,
          '/domain/{serviceName}/ukOutgoingTransfer'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: domain_uk_registrar
        )
      end

      def service_name_uk_registrars_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/ukRegistrars'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
