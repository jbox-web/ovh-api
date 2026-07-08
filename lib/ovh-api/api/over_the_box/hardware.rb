# frozen_string_literal: true

module Ovh::Api
  module Api
    class OverTheBox::Hardware
      def initialize(connection)
        @connection = connection
      end

      def available_get
        @connection.call(
          :GET,
          '/overTheBox/hardware/available',
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/overTheBox/hardware',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def hardware_name_get(hardware_name:)
        raise ArgumentError, 'hardware_name is required' if hardware_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/hardware/{hardwareName}'
            .gsub('{hardwareName}', ERB::Util.url_encode(hardware_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
