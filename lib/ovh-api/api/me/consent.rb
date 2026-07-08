# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Consent
      def initialize(connection)
        @connection = connection
      end

      def campaign_name_decision_get(campaign_name:)
        raise ArgumentError, 'campaign_name is required' if campaign_name.nil?

        @connection.call(
          :GET,
          '/me/consent/{campaignName}/decision'
            .gsub('{campaignName}', ERB::Util.url_encode(campaign_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def campaign_name_decision_put(campaign_name:, me_consent_decision:)
        raise ArgumentError, 'campaign_name is required' if campaign_name.nil?
        raise ArgumentError, 'me_consent_decision is required' if me_consent_decision.nil?

        @connection.call(
          :PUT,
          '/me/consent/{campaignName}/decision'
            .gsub('{campaignName}', ERB::Util.url_encode(campaign_name.to_s)),
          type: nil,
          auth: [],
          body: me_consent_decision
        )
      end

      def campaign_name_get(campaign_name:)
        raise ArgumentError, 'campaign_name is required' if campaign_name.nil?

        @connection.call(
          :GET,
          '/me/consent/{campaignName}'
            .gsub('{campaignName}', ERB::Util.url_encode(campaign_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get
        @connection.call(
          :GET,
          '/me/consent',
          type: nil,
          auth: []
        )
      end
    end
  end
end
