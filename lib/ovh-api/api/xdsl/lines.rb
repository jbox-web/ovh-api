# frozen_string_literal: true

module Ovh::Api
  module Api
    class Xdsl::Lines
      def initialize(connection)
        @connection = connection
      end

      def diagnostic_cancel(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/lines/{number}/diagnostic/cancel'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def diagnostic_run(number:, service_name:, xdsl_lines_diagnostic_run_post:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_lines_diagnostic_run_post is required' if xdsl_lines_diagnostic_run_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/lines/{number}/diagnostic/run'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_lines_diagnostic_run_post
        )
      end

      def dslam_port(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/lines/{number}/dslamPort'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dslam_port_available_profiles(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/lines/{number}/dslamPort/availableProfiles'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dslam_port_change_profile(number:, service_name:, xdsl_lines_dslam_port_change_profile_post:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_lines_dslam_port_change_profile_post is required' if xdsl_lines_dslam_port_change_profile_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/lines/{number}/dslamPort/changeProfile'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_lines_dslam_port_change_profile_post
        )
      end

      def dslam_port_logs(limit:, number:, service_name:)
        raise ArgumentError, 'limit is required' if limit.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/lines/{number}/dslamPort/logs'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit }
        )
      end

      def dslam_port_reset(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/lines/{number}/dslamPort/reset'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/lines/{number}'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/lines'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def statistics(number:, period:, service_name:, type:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/lines/{number}/statistics'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end
    end
  end
end
