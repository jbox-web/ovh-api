# frozen_string_literal: true

module Ovh::Api
  module Api
    class Pack::Siptrunk
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/pack/siptrunk',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def pack_name_change_contact_post(pack_name:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :POST,
          '/pack/siptrunk/{packName}/changeContact'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_change_contact_post_request
        )
      end

      def pack_name_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/siptrunk/{packName}'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_service_infos_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/siptrunk/{packName}/serviceInfos'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_service_infos_put(pack_name:, services_service:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/pack/siptrunk/{packName}/serviceInfos'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end
    end
  end
end
