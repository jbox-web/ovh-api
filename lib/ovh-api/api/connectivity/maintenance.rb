# frozen_string_literal: true

module Ovh::Api
  module Api
    class Connectivity::Maintenance
      def initialize(connection)
        @connection = connection
      end

      def work_planned_partners_get
        @connection.call(
          :GET,
          '/connectivity/maintenance/workPlanned/partners',
          type: nil,
          auth: []
        )
      end

      def work_planned_public_get(begin_date: nil, end_date: nil)
        @connection.call(
          :GET,
          '/connectivity/maintenance/workPlanned/public',
          type: nil,
          auth: [],
          query: { 'beginDate' => begin_date, 'endDate' => end_date }
        )
      end
    end
  end
end
