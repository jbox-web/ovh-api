# frozen_string_literal: true

module Ovh::Api
  module Api
    class Services::Form
      def initialize(connection)
        @connection = connection
      end

      def answer(form_name:, service_id:, services_form_form:)
        raise ArgumentError, 'form_name is required' if form_name.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_form_form is required' if services_form_form.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/form/{formName}/answer'
            .gsub('{formName}', ERB::Util.url_encode(form_name.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_form_form
        )
      end

      def get(form_name:, service_id:)
        raise ArgumentError, 'form_name is required' if form_name.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/form/{formName}'
            .gsub('{formName}', ERB::Util.url_encode(form_name.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/form'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
