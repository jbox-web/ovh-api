# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vps::Order
      def initialize(connection)
        @connection = connection
      end

      def rule_datacenter_get(ovh_subsidiary:, plan_code:, os: nil)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/vps/order/rule/datacenter',
          type: nil,
          auth: [],
          query: { 'os' => os, 'ovhSubsidiary' => ovh_subsidiary, 'planCode' => plan_code }
        )
      end

      def rule_os_choices_get(datacenter:, os:)
        raise ArgumentError, 'datacenter is required' if datacenter.nil?
        raise ArgumentError, 'os is required' if os.nil?

        @connection.call(
          :GET,
          '/vps/order/rule/osChoices',
          type: nil,
          auth: [],
          query: { 'datacenter' => datacenter, 'os' => os }
        )
      end
    end
  end
end
