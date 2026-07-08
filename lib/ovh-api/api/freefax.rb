# frozen_string_literal: true

module Ovh::Api
  module Api
    class Freefax
      def initialize(connection)
        @connection = connection
      end

      def credits_get
        @connection.call(
          :GET,
          '/freefax/credits',
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/freefax',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_change_password_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/freefax/{serviceName}/changePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_directory_fetch_entreprise_informations_post(service_name:, telephony_entreprise_number:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_entreprise_number is required' if telephony_entreprise_number.nil?

        @connection.call(
          :POST,
          '/freefax/{serviceName}/directory/fetchEntrepriseInformations'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_entreprise_number
        )
      end

      def service_name_directory_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/freefax/{serviceName}/directory'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_directory_get_directory_service_code_get(ape_code:, service_name:)
        raise ArgumentError, 'ape_code is required' if ape_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/freefax/{serviceName}/directory/getDirectoryServiceCode'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'apeCode' => ape_code }
        )
      end

      def service_name_directory_get_way_types_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/freefax/{serviceName}/directory/getWayTypes'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_directory_put(service_name:, telephony_directory_info:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_directory_info is required' if telephony_directory_info.nil?

        @connection.call(
          :PUT,
          '/freefax/{serviceName}/directory'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_directory_info
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/freefax/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_main_service_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/freefax/{serviceName}/mainService'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, freefax_freefax_properties:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'freefax_freefax_properties is required' if freefax_freefax_properties.nil?

        @connection.call(
          :PUT,
          '/freefax/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: freefax_freefax_properties
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/freefax/{serviceName}/serviceInfos'
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
          '/freefax/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end
    end
  end
end
