# frozen_string_literal: true

module Ovh::Api
  module Api
    class Xdsl::Spare
      def initialize(connection)
        @connection = connection
      end

      def brands_get
        @connection.call(
          :GET,
          '/xdsl/spare/brands',
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/xdsl/spare',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def spare_compatible_replacement_get(spare:)
        raise ArgumentError, 'spare is required' if spare.nil?

        @connection.call(
          :GET,
          '/xdsl/spare/{spare}/compatibleReplacement'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: []
        )
      end

      def spare_delete(spare:)
        raise ArgumentError, 'spare is required' if spare.nil?

        @connection.call(
          :DELETE,
          '/xdsl/spare/{spare}'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: []
        )
      end

      def spare_get(spare:)
        raise ArgumentError, 'spare is required' if spare.nil?

        @connection.call(
          :GET,
          '/xdsl/spare/{spare}'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: []
        )
      end

      def spare_replace_post(spare:, xdsl_spare_replace_post:)
        raise ArgumentError, 'spare is required' if spare.nil?
        raise ArgumentError, 'xdsl_spare_replace_post is required' if xdsl_spare_replace_post.nil?

        @connection.call(
          :POST,
          '/xdsl/spare/{spare}/replace'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: [],
          body: xdsl_spare_replace_post
        )
      end

      def spare_return_merchandise_post(spare:)
        raise ArgumentError, 'spare is required' if spare.nil?

        @connection.call(
          :POST,
          '/xdsl/spare/{spare}/returnMerchandise'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: []
        )
      end

      def spare_service_infos_get(spare:)
        raise ArgumentError, 'spare is required' if spare.nil?

        @connection.call(
          :GET,
          '/xdsl/spare/{spare}/serviceInfos'
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
          '/xdsl/spare/{spare}/serviceInfos'
            .gsub('{spare}', ERB::Util.url_encode(spare.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end
    end
  end
end
