# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Order
      def initialize(connection)
        @connection = connection
      end

      def get(date_from: nil, date_to: nil)
        @connection.call(
          :GET,
          '/me/order',
          type: nil,
          auth: [],
          query: { 'date.from' => date_from, 'date.to' => date_to }
        )
      end

      def order_id_associated_object_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/associatedObject'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_available_registered_payment_mean_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/availableRegisteredPaymentMean'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_balance_balance_name_delete(balance_name:, order_id:)
        raise ArgumentError, 'balance_name is required' if balance_name.nil?
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :DELETE,
          '/me/order/{orderId}/balance/{balanceName}'
            .gsub('{balanceName}', ERB::Util.url_encode(balance_name.to_s))
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_balance_balance_name_get(balance_name:, order_id:)
        raise ArgumentError, 'balance_name is required' if balance_name.nil?
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/balance/{balanceName}'
            .gsub('{balanceName}', ERB::Util.url_encode(balance_name.to_s))
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_balance_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/balance'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_balance_post(order_id:, body:)
        raise ArgumentError, 'order_id is required' if order_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/order/{orderId}/balance'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def order_id_consumption_details_get(file_format:, order_id:)
        raise ArgumentError, 'file_format is required' if file_format.nil?
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/consumption/details'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: [],
          query: { 'fileFormat' => file_format }
        )
      end

      def order_id_debt_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/debt'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_debt_operation_get(order_id:, deposit_order_id: nil)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/debt/operation'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: [],
          query: { 'depositOrderId' => deposit_order_id }
        )
      end

      def order_id_debt_operation_operation_id_associated_object_get(operation_id:, order_id:)
        raise ArgumentError, 'operation_id is required' if operation_id.nil?
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/debt/operation/{operationId}/associatedObject'
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s))
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_debt_operation_operation_id_get(operation_id:, order_id:)
        raise ArgumentError, 'operation_id is required' if operation_id.nil?
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/debt/operation/{operationId}'
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s))
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_debt_pay_post(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :POST,
          '/me/order/{orderId}/debt/pay'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_details_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/details'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_details_order_detail_id_extension_get(order_detail_id:, order_id:)
        raise ArgumentError, 'order_detail_id is required' if order_detail_id.nil?
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/details/{orderDetailId}/extension'
            .gsub('{orderDetailId}', ERB::Util.url_encode(order_detail_id.to_s))
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_details_order_detail_id_get(order_detail_id:, order_id:)
        raise ArgumentError, 'order_detail_id is required' if order_detail_id.nil?
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/details/{orderDetailId}'
            .gsub('{orderDetailId}', ERB::Util.url_encode(order_detail_id.to_s))
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_follow_up_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/followUp'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_pay_post(order_id:, billing_order_pay_with_payment_method:)
        raise ArgumentError, 'order_id is required' if order_id.nil?
        raise ArgumentError, 'billing_order_pay_with_payment_method is required' if billing_order_pay_with_payment_method.nil?

        @connection.call(
          :POST,
          '/me/order/{orderId}/pay'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: [],
          body: billing_order_pay_with_payment_method
        )
      end

      def order_id_pay_with_registered_payment_mean_post(order_id:, me_order_order_id_pay_with_registered_payment_mean_post_request:)
        raise ArgumentError, 'order_id is required' if order_id.nil?
        raise ArgumentError, 'me_order_order_id_pay_with_registered_payment_mean_post_request is required' if me_order_order_id_pay_with_registered_payment_mean_post_request.nil?

        @connection.call(
          :POST,
          '/me/order/{orderId}/payWithRegisteredPaymentMean'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: [],
          body: me_order_order_id_pay_with_registered_payment_mean_post_request
        )
      end

      def order_id_payment_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/payment'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_payment_means_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/paymentMeans'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_payment_methods_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/paymentMethods'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_retraction_post(order_id:, me_order_order_id_retraction_post_request:)
        raise ArgumentError, 'order_id is required' if order_id.nil?
        raise ArgumentError, 'me_order_order_id_retraction_post_request is required' if me_order_order_id_retraction_post_request.nil?

        @connection.call(
          :POST,
          '/me/order/{orderId}/retraction'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: [],
          body: me_order_order_id_retraction_post_request
        )
      end

      def order_id_status_get(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :GET,
          '/me/order/{orderId}/status'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_id_waive_retraction_post(order_id:)
        raise ArgumentError, 'order_id is required' if order_id.nil?

        @connection.call(
          :POST,
          '/me/order/{orderId}/waiveRetraction'
            .gsub('{orderId}', ERB::Util.url_encode(order_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
