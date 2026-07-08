# frozen_string_literal: true

module Ovh::Api
  module Api
    class License::Hycu
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/license/hycu',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_activate_post(service_name:, hycu_activate_license_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hycu_activate_license_payload is required' if hycu_activate_license_payload.nil?

        @connection.call(
          :POST,
          '/license/hycu/{serviceName}/activate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hycu_activate_license_payload
        )
      end

      def service_name_confirm_termination_post(service_name:, cloud_project_service_name_confirm_termination_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_service_name_confirm_termination_post_request is required' if cloud_project_service_name_confirm_termination_post_request.nil?

        @connection.call(
          :POST,
          '/license/hycu/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_service_name_confirm_termination_post_request
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/hycu/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_license_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/hycu/{serviceName}/license'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, license_hycu_hycu:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'license_hycu_hycu is required' if license_hycu_hycu.nil?

        @connection.call(
          :PUT,
          '/license/hycu/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: license_hycu_hycu
        )
      end

      def service_name_refresh_post(service_name:, hycu_refresh_license_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hycu_refresh_license_payload is required' if hycu_refresh_license_payload.nil?

        @connection.call(
          :POST,
          '/license/hycu/{serviceName}/refresh'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hycu_refresh_license_payload
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/hycu/{serviceName}/serviceInfos'
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
          '/license/hycu/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/license/hycu/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
