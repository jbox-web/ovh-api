# frozen_string_literal: true

module Ovh::Api
  module Api
    class Price::DedicatedCloud
      def initialize(connection)
        @connection = connection
      end

      def call_2013v1_bhs1a_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/bhs1a/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_bhs1a_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/bhs1a/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_bhs1a_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/bhs1a/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_bhs1a_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/bhs1a/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_rbx2a_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/rbx2a/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_rbx2a_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/rbx2a/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_rbx2a_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/rbx2a/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_rbx2a_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/rbx2a/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_sbg1a_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/sbg1a/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_sbg1a_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/sbg1a/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_sbg1a_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/sbg1a/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_sbg1a_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2013v1/sbg1a/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_bhs1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/bhs1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_bhs1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/bhs1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_bhs1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/bhs1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_bhs1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/bhs1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2b_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2b/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2b_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2b/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2b_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2b/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2b_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2b/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_sbg1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/sbg1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_sbg1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/sbg1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_sbg1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/sbg1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_sbg1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/sbg1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v1/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_bhs1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/bhs1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_bhs1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/bhs1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_bhs1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/bhs1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_bhs1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/bhs1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2b_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2b/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2b_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2b/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2b_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2b/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2b_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2b/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_sbg1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/sbg1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_sbg1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/sbg1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_sbg1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/sbg1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_sbg1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/sbg1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v2_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2014v2/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_bhs1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/bhs1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_bhs1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/bhs1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_bhs1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/bhs1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_bhs1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/bhs1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2b_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2b/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2b_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2b/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2b_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2b/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2b_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2b/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_sbg1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/sbg1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_sbg1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/sbg1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_sbg1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/sbg1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_sbg1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/sbg1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v1_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v1/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_bhs1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/bhs1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_bhs1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/bhs1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_bhs1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/bhs1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_bhs1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/bhs1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2b_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2b/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2b_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2b/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2b_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2b/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2b_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2b/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_sbg1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/sbg1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_sbg1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/sbg1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_sbg1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/sbg1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_sbg1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/sbg1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v2_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v2/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_bhs1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/bhs1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_bhs1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/bhs1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_bhs1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/bhs1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_bhs1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/bhs1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2b_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2b/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2b_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2b/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2b_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2b/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2b_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2b/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_sbg1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/sbg1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_sbg1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/sbg1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_sbg1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/sbg1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_sbg1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/sbg1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v3_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v3/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_bhs1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/bhs1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_bhs1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/bhs1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_bhs1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/bhs1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_bhs1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/bhs1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2b_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2b/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2b_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2b/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2b_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2b/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2b_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2b/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_sbg1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/sbg1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_sbg1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/sbg1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_sbg1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/sbg1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_sbg1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/sbg1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v4_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v4/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_bhs1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/bhs1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_bhs1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/bhs1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_bhs1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/bhs1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_bhs1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/bhs1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2b_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2b/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2b_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2b/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2b_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2b/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2b_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2b/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_sbg1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/sbg1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_sbg1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/sbg1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_sbg1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/sbg1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_sbg1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/sbg1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v5_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v5/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_bhs1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/bhs1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_bhs1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/bhs1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_bhs1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/bhs1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_bhs1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/bhs1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2b_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2b/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2b_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2b/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2b_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2b/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2b_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2b/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_sbg1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/sbg1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_sbg1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/sbg1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_sbg1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/sbg1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_sbg1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/sbg1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v6_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v6/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_bhs1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/bhs1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_bhs1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/bhs1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_bhs1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/bhs1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_bhs1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/bhs1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2b_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2b/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2b_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2b/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2b_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2b/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2b_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2b/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_sbg1a_enterprise_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/sbg1a/enterprise/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_sbg1a_enterprise_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/sbg1a/enterprise/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_sbg1a_enterprise_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/sbg1a/enterprise/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_sbg1a_enterprise_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/sbg1a/enterprise/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2016v7_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2016v7/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_eri1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/eri1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_eri1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/eri1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_eri1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/eri1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_eri1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/eri1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_lim1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/lim1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_lim1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/lim1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_lim1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/lim1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_lim1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/lim1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2d_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2d/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2d_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2d/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2d_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2d/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_rbx2d_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/rbx2d/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_waw1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/waw1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_waw1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/waw1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_waw1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/waw1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_waw1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v1/waw1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_eri1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/eri1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_eri1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/eri1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_eri1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/eri1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_eri1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/eri1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_lim1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/lim1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_lim1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/lim1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_lim1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/lim1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_lim1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/lim1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2d_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2d/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2d_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2d/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2d_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2d/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_rbx2d_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/rbx2d/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_waw1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/waw1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_waw1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/waw1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_waw1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/waw1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_waw1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v2/waw1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_eri1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/eri1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_eri1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/eri1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_eri1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/eri1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_eri1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/eri1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_lim1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/lim1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_lim1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/lim1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_lim1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/lim1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_lim1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/lim1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2d_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2d/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2d_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2d/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2d_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2d/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_rbx2d_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/rbx2d/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_waw1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/waw1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_waw1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/waw1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_waw1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/waw1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v3_waw1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v3/waw1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_eri1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/eri1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_eri1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/eri1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_eri1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/eri1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_eri1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/eri1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_lim1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/lim1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_lim1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/lim1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_lim1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/lim1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_lim1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/lim1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2d_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2d/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2d_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2d/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2d_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2d/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_rbx2d_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/rbx2d/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_waw1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/waw1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_waw1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/waw1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_waw1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/waw1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v4_waw1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v4/waw1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_eri1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/eri1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_eri1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/eri1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_eri1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/eri1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_eri1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/eri1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_lim1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/lim1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_lim1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/lim1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_lim1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/lim1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_lim1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/lim1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2d_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2d/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2d_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2d/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2d_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2d/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_rbx2d_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/rbx2d/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_waw1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/waw1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_waw1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/waw1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_waw1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/waw1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v5_waw1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v5/waw1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_eri1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/eri1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_eri1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/eri1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_eri1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/eri1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_eri1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/eri1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_lim1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/lim1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_lim1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/lim1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_lim1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/lim1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_lim1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/lim1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2d_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2d/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2d_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2d/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2d_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2d/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_rbx2d_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/rbx2d/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_waw1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/waw1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_waw1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/waw1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_waw1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/waw1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v6_waw1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v6/waw1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_bhs1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/bhs1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_bhs1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/bhs1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_bhs1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/bhs1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_bhs1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/bhs1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_eri1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/eri1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_eri1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/eri1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_eri1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/eri1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_eri1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/eri1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_lim1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/lim1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_lim1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/lim1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_lim1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/lim1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_lim1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/lim1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2b_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2b/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2b_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2b/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2b_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2b/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2b_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2b/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2d_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2d/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2d_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2d/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2d_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2d/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_rbx2d_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/rbx2d/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_sbg1a_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/sbg1a/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_sbg1a_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/sbg1a/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_sbg1a_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/sbg1a/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_sbg1a_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/sbg1a/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_waw1c_infrastructure_filer_hourly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/waw1c/infrastructure/filer/hourly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_waw1c_infrastructure_filer_monthly(filer_profile:)
        raise ArgumentError, 'filer_profile is required' if filer_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/waw1c/infrastructure/filer/monthly/{filerProfile}'
            .gsub('{filerProfile}', ERB::Util.url_encode(filer_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_waw1c_infrastructure_host_hourly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/waw1c/infrastructure/host/hourly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v7_waw1c_infrastructure_host_monthly(host_profile:)
        raise ArgumentError, 'host_profile is required' if host_profile.nil?

        @connection.call(
          :GET,
          '/price/dedicatedCloud/2018v7/waw1c/infrastructure/host/monthly/{hostProfile}'
            .gsub('{hostProfile}', ERB::Util.url_encode(host_profile.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
