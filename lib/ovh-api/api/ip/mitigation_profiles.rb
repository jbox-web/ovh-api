# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::MitigationProfiles
      def initialize(connection)
        @connection = connection
      end

      def create(ip:, ip_ip_mitigation_profiles_post_request:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_ip_mitigation_profiles_post_request is required' if ip_ip_mitigation_profiles_post_request.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/mitigationProfiles'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: ip_ip_mitigation_profiles_post_request
        )
      end

      def delete(ip:, ip_mitigation_profile:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_mitigation_profile is required' if ip_mitigation_profile.nil?

        @connection.call(
          :DELETE,
          '/ip/{ip}/mitigationProfiles/{ipMitigationProfile}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipMitigationProfile}', ERB::Util.url_encode(ip_mitigation_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ip:, ip_mitigation_profile:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_mitigation_profile is required' if ip_mitigation_profile.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/mitigationProfiles/{ipMitigationProfile}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipMitigationProfile}', ERB::Util.url_encode(ip_mitigation_profile.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/mitigationProfiles'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(ip:, ip_mitigation_profile:, ip_mitigation_profile2:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_mitigation_profile is required' if ip_mitigation_profile.nil?
        raise ArgumentError, 'ip_mitigation_profile2 is required' if ip_mitigation_profile2.nil?

        @connection.call(
          :PUT,
          '/ip/{ip}/mitigationProfiles/{ipMitigationProfile}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipMitigationProfile}', ERB::Util.url_encode(ip_mitigation_profile.to_s)),
          type: nil,
          auth: [],
          body: ip_mitigation_profile2
        )
      end
    end
  end
end
