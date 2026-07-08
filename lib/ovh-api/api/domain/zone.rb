# frozen_string_literal: true

module Ovh::Api
  module Api
    class Domain::Zone
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/domain/zone',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def zone_name_capabilities_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/capabilities'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_change_contact_post(zone_name:, services_change_contact:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'services_change_contact is required' if services_change_contact.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/changeContact'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: services_change_contact
        )
      end

      def zone_name_confirm_termination_post(zone_name:, services_confirm_termination:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'services_confirm_termination is required' if services_confirm_termination.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/confirmTermination'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: services_confirm_termination
        )
      end

      def zone_name_dnssec_delete(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :DELETE,
          '/domain/zone/{zoneName}/dnssec'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_dnssec_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/dnssec'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_dnssec_post(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/dnssec'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_dyn_host_login_get(zone_name:, login: nil, sub_domain: nil)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/dynHost/login'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          query: { 'login' => login, 'subDomain' => sub_domain }
        )
      end

      def zone_name_dyn_host_login_login_change_password_post(login:, zone_name:, domain_zone_dyn_host_login_change_password:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_dyn_host_login_change_password is required' if domain_zone_dyn_host_login_change_password.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/dynHost/login/{login}/changePassword'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_dyn_host_login_change_password
        )
      end

      def zone_name_dyn_host_login_login_delete(login:, zone_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :DELETE,
          '/domain/zone/{zoneName}/dynHost/login/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_dyn_host_login_login_get(login:, zone_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/dynHost/login/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_dyn_host_login_login_put(login:, zone_name:, domain_zone_dyn_host_login:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_dyn_host_login is required' if domain_zone_dyn_host_login.nil?

        @connection.call(
          :PUT,
          '/domain/zone/{zoneName}/dynHost/login/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_dyn_host_login
        )
      end

      def zone_name_dyn_host_login_post(zone_name:, domain_zone_dyn_host_login_create:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_dyn_host_login_create is required' if domain_zone_dyn_host_login_create.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/dynHost/login'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_dyn_host_login_create
        )
      end

      def zone_name_dyn_host_record_get(zone_name:, sub_domain: nil)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/dynHost/record'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          query: { 'subDomain' => sub_domain }
        )
      end

      def zone_name_dyn_host_record_id_delete(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :DELETE,
          '/domain/zone/{zoneName}/dynHost/record/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_dyn_host_record_id_get(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/dynHost/record/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_dyn_host_record_id_put(id:, zone_name:, domain_zone_dyn_host_record:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_dyn_host_record is required' if domain_zone_dyn_host_record.nil?

        @connection.call(
          :PUT,
          '/domain/zone/{zoneName}/dynHost/record/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_dyn_host_record
        )
      end

      def zone_name_dyn_host_record_post(zone_name:, domain_zone_dyn_host_record:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_dyn_host_record is required' if domain_zone_dyn_host_record.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/dynHost/record'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_dyn_host_record
        )
      end

      def zone_name_export_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/export'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_history_creation_date_get(creation_date:, zone_name:)
        raise ArgumentError, 'creation_date is required' if creation_date.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/history/{creationDate}'
            .gsub('{creationDate}', ERB::Util.url_encode(creation_date.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_history_creation_date_restore_post(creation_date:, zone_name:)
        raise ArgumentError, 'creation_date is required' if creation_date.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/history/{creationDate}/restore'
            .gsub('{creationDate}', ERB::Util.url_encode(creation_date.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_history_get(zone_name:, creation_date_from: nil, creation_date_to: nil)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/history'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDate.from' => creation_date_from, 'creationDate.to' => creation_date_to }
        )
      end

      def zone_name_import_post(zone_name:, domain_zone_import:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_import is required' if domain_zone_import.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/import'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_import
        )
      end

      def zone_name_option_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/option'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_option_name_get(name:, zone_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/option/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_option_name_service_infos_get(name:, zone_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/option/{name}/serviceInfos'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_option_name_service_infos_put(name:, zone_name:, service_renew_type:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'service_renew_type is required' if service_renew_type.nil?

        @connection.call(
          :PUT,
          '/domain/zone/{zoneName}/option/{name}/serviceInfos'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: service_renew_type
        )
      end

      def zone_name_record_get(zone_name:, field_type: nil, sub_domain: nil)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/record'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          query: { 'fieldType' => field_type, 'subDomain' => sub_domain }
        )
      end

      def zone_name_record_id_delete(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :DELETE,
          '/domain/zone/{zoneName}/record/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_record_id_get(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/record/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_record_id_put(id:, zone_name:, domain_zone_record_update:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_record_update is required' if domain_zone_record_update.nil?

        @connection.call(
          :PUT,
          '/domain/zone/{zoneName}/record/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_record_update
        )
      end

      def zone_name_record_post(zone_name:, domain_zone_record_create:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_record_create is required' if domain_zone_record_create.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/record'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_record_create
        )
      end

      def zone_name_redirection_get(zone_name:, sub_domain: nil)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/redirection'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          query: { 'subDomain' => sub_domain }
        )
      end

      def zone_name_redirection_id_delete(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :DELETE,
          '/domain/zone/{zoneName}/redirection/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_redirection_id_get(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/redirection/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_redirection_id_put(id:, zone_name:, domain_zone_redirection_update:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_redirection_update is required' if domain_zone_redirection_update.nil?

        @connection.call(
          :PUT,
          '/domain/zone/{zoneName}/redirection/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_redirection_update
        )
      end

      def zone_name_redirection_post(zone_name:, domain_zone_redirection_create:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_redirection_create is required' if domain_zone_redirection_create.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/redirection'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_redirection_create
        )
      end

      def zone_name_refresh_post(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/refresh'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_reset_post(zone_name:, domain_zone_reset:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_reset is required' if domain_zone_reset.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/reset'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_reset
        )
      end

      def zone_name_service_infos_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/serviceInfos'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_service_infos_put(zone_name:, services_service:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/domain/zone/{zoneName}/serviceInfos'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def zone_name_soa_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/soa'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_soa_put(zone_name:, domain_zone_soa:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?
        raise ArgumentError, 'domain_zone_soa is required' if domain_zone_soa.nil?

        @connection.call(
          :PUT,
          '/domain/zone/{zoneName}/soa'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          body: domain_zone_soa
        )
      end

      def zone_name_status_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/status'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_task_get(zone_name:, function: nil, status: nil)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/task'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: [],
          query: { 'function' => function, 'status' => status }
        )
      end

      def zone_name_task_id_accelerate_post(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/task/{id}/accelerate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_task_id_cancel_post(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/task/{id}/cancel'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_task_id_get(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/domain/zone/{zoneName}/task/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_task_id_relaunch_post(id:, zone_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/task/{id}/relaunch'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_name_terminate_post(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :POST,
          '/domain/zone/{zoneName}/terminate'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
