# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Spare
      def initialize(connection)
        @connection = connection
      end

      def brands_get
        @connection.call(
          :GET,
          '/telephony/spare/brands',
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/telephony/spare',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def spare_compatible_replacement_get(spare:)
        raise ArgumentError, 'spare is required' if spare.nil?

        @connection.call(
          :GET,
          '/telephony/spare/{spare}/compatibleReplacement'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: []
        )
      end

      def spare_delete(spare:)
        raise ArgumentError, 'spare is required' if spare.nil?

        @connection.call(
          :DELETE,
          '/telephony/spare/{spare}'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: []
        )
      end

      def spare_get(spare:)
        raise ArgumentError, 'spare is required' if spare.nil?

        @connection.call(
          :GET,
          '/telephony/spare/{spare}'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: []
        )
      end

      def spare_replace_post(spare:, telephony_spare_spare_replace_post_request:)
        raise ArgumentError, 'spare is required' if spare.nil?
        raise ArgumentError, 'telephony_spare_spare_replace_post_request is required' if telephony_spare_spare_replace_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/spare/{spare}/replace'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: [],
          body: telephony_spare_spare_replace_post_request
        )
      end

      def spare_service_infos_get(spare:)
        raise ArgumentError, 'spare is required' if spare.nil?

        @connection.call(
          :GET,
          '/telephony/spare/{spare}/serviceInfos'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: []
        )
      end

      def spare_service_infos_put(spare:, services_service:)
        raise ArgumentError, 'spare is required' if spare.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/telephony/spare/{spare}/serviceInfos'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end
    end
  end
end
