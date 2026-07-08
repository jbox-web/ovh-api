# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Consumption
      def initialize(connection)
        @connection = connection
      end

      def usage_current_get
        @connection.call(
          :GET,
          '/me/consumption/usage/current',
          type: nil,
          auth: []
        )
      end

      def usage_forecast_get
        @connection.call(
          :GET,
          '/me/consumption/usage/forecast',
          type: nil,
          auth: []
        )
      end

      def usage_history_get(begin_date:, end_date:)
        raise ArgumentError, 'begin_date is required' if begin_date.nil?
        raise ArgumentError, 'end_date is required' if end_date.nil?

        @connection.call(
          :GET,
          '/me/consumption/usage/history',
          type: nil,
          auth: [],
          query: { 'beginDate' => begin_date, 'endDate' => end_date }
        )
      end
    end
  end
end
