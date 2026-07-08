# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Xdsl
      def initialize(connection)
        @connection = connection
      end

      def setting_get
        @connection.call(
          :GET,
          '/me/xdsl/setting',
          type: nil,
          auth: []
        )
      end

      def setting_post(me_xdsl_setting_post_request: nil)
        @connection.call(
          :POST,
          '/me/xdsl/setting',
          type: nil,
          auth: [],
          body: me_xdsl_setting_post_request
        )
      end
    end
  end
end
