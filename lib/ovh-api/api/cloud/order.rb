# frozen_string_literal: true

module Ovh::Api
  module Api
    class Cloud::Order
      def initialize(connection)
        @connection = connection
      end

      def get(plan_code: nil)
        @connection.call(
          :GET,
          '/cloud/order',
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def rule_availability_get(ovh_subsidiary:, addon_family: nil, plan_code: nil)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/cloud/order/rule/availability',
          type: nil,
          auth: [],
          query: { 'addonFamily' => addon_family, 'ovhSubsidiary' => ovh_subsidiary, 'planCode' => plan_code }
        )
      end
    end
  end
end
