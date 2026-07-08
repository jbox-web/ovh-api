# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Cdn
      def initialize(connection)
        @connection = connection
      end

      def dedicated_get
        @connection.call(
          :GET,
          '/order/cdn/dedicated',
          type: nil,
          auth: []
        )
      end

      def dedicated_new_duration_get(duration:)
        raise ArgumentError, 'duration is required' if duration.nil?

        @connection.call(
          :GET,
          '/order/cdn/dedicated/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: []
        )
      end

      def dedicated_new_duration_post(duration:)
        raise ArgumentError, 'duration is required' if duration.nil?

        @connection.call(
          :POST,
          '/order/cdn/dedicated/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: []
        )
      end

      def dedicated_new_get
        @connection.call(
          :GET,
          '/order/cdn/dedicated/new',
          type: nil,
          auth: []
        )
      end

      def dedicated_service_name_backend_duration_get(backend:, duration:, service_name:)
        raise ArgumentError, 'backend is required' if backend.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cdn/dedicated/{serviceName}/backend/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'backend' => backend }
        )
      end

      def dedicated_service_name_backend_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/cdn/dedicated/{serviceName}/backend/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def dedicated_service_name_backend_get(backend:, service_name:)
        raise ArgumentError, 'backend is required' if backend.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cdn/dedicated/{serviceName}/backend'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'backend' => backend }
        )
      end

      def dedicated_service_name_cache_rule_duration_get(cache_rule:, duration:, service_name:)
        raise ArgumentError, 'cache_rule is required' if cache_rule.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cdn/dedicated/{serviceName}/cacheRule/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'cacheRule' => cache_rule }
        )
      end

      def dedicated_service_name_cache_rule_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/cdn/dedicated/{serviceName}/cacheRule/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def dedicated_service_name_cache_rule_get(cache_rule:, service_name:)
        raise ArgumentError, 'cache_rule is required' if cache_rule.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cdn/dedicated/{serviceName}/cacheRule'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'cacheRule' => cache_rule }
        )
      end

      def dedicated_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cdn/dedicated/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dedicated_service_name_quota_duration_get(duration:, quota:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'quota is required' if quota.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cdn/dedicated/{serviceName}/quota/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quota' => quota }
        )
      end

      def dedicated_service_name_quota_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/cdn/dedicated/{serviceName}/quota/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def dedicated_service_name_quota_get(quota:, service_name:)
        raise ArgumentError, 'quota is required' if quota.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cdn/dedicated/{serviceName}/quota'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quota' => quota }
        )
      end
    end
  end
end
