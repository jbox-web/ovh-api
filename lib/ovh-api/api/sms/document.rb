# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::Document
      def initialize(connection)
        @connection = connection
      end

      def list(service_name:, way_type:, batch_id: nil, creation_datetime_from: nil, creation_datetime_to: nil, tag: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'way_type is required' if way_type.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/document'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'batchID' => batch_id, 'creationDatetime.from' => creation_datetime_from, 'creationDatetime.to' => creation_datetime_to, 'tag' => tag, 'wayType' => way_type }
        )
      end
    end
  end
end
