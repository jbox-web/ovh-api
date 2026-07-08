# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::TemplatesControl
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, sms_service_name_templates_control_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_templates_control_post_request is required' if sms_service_name_templates_control_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/templatesControl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_templates_control_post_request
        )
      end

      def delete(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/templatesControl/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/templatesControl/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/templatesControl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def relaunch_validation(name:, service_name:, sms_service_name_templates_control_name_relaunch_validation_post_request:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_templates_control_name_relaunch_validation_post_request is required' if sms_service_name_templates_control_name_relaunch_validation_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/templatesControl/{name}/relaunchValidation'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_templates_control_name_relaunch_validation_post_request
        )
      end

      def update(name:, service_name:, sms_template_control:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_template_control is required' if sms_template_control.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/templatesControl/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_template_control
        )
      end
    end
  end
end
