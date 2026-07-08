# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Subscription
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/me/subscription',
          type: nil,
          auth: []
        )
      end

      def subscription_type_get(subscription_type:)
        raise ArgumentError, 'subscription_type is required' if subscription_type.nil?

        @connection.call(
          :GET,
          '/me/subscription/{subscriptionType}'
            .gsub('{subscriptionType}', ERB::Util.url_encode(subscription_type.to_s)),
          type: nil,
          auth: []
        )
      end

      def subscription_type_put(subscription_type:, nichandle_subscription:)
        raise ArgumentError, 'subscription_type is required' if subscription_type.nil?
        raise ArgumentError, 'nichandle_subscription is required' if nichandle_subscription.nil?

        @connection.call(
          :PUT,
          '/me/subscription/{subscriptionType}'
            .gsub('{subscriptionType}', ERB::Util.url_encode(subscription_type.to_s)),
          type: nil,
          auth: [],
          body: nichandle_subscription
        )
      end
    end
  end
end
