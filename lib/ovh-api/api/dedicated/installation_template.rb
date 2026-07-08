# frozen_string_literal: true

module Ovh::Api
  module Api
    class Dedicated::InstallationTemplate
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/dedicated/installationTemplate',
          type: nil,
          auth: []
        )
      end

      def template_infos_get
        @connection.call(
          :GET,
          '/dedicated/installationTemplate/templateInfos',
          type: nil,
          auth: []
        )
      end

      def template_name_get(template_name:)
        raise ArgumentError, 'template_name is required' if template_name.nil?

        @connection.call(
          :GET,
          '/dedicated/installationTemplate/{templateName}'
            .gsub('{templateName}', ERB::Util.url_encode(template_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def template_name_partition_scheme_get(template_name:)
        raise ArgumentError, 'template_name is required' if template_name.nil?

        @connection.call(
          :GET,
          '/dedicated/installationTemplate/{templateName}/partitionScheme'
            .gsub('{templateName}', ERB::Util.url_encode(template_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def template_name_partition_scheme_scheme_name_get(scheme_name:, template_name:)
        raise ArgumentError, 'scheme_name is required' if scheme_name.nil?
        raise ArgumentError, 'template_name is required' if template_name.nil?

        @connection.call(
          :GET,
          '/dedicated/installationTemplate/{templateName}/partitionScheme/{schemeName}'
            .gsub('{schemeName}', ERB::Util.url_encode(scheme_name.to_s))
            .gsub('{templateName}', ERB::Util.url_encode(template_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def template_name_partition_scheme_scheme_name_hardware_raid_get(scheme_name:, template_name:)
        raise ArgumentError, 'scheme_name is required' if scheme_name.nil?
        raise ArgumentError, 'template_name is required' if template_name.nil?

        @connection.call(
          :GET,
          '/dedicated/installationTemplate/{templateName}/partitionScheme/{schemeName}/hardwareRaid'
            .gsub('{schemeName}', ERB::Util.url_encode(scheme_name.to_s))
            .gsub('{templateName}', ERB::Util.url_encode(template_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def template_name_partition_scheme_scheme_name_hardware_raid_name_get(name:, scheme_name:, template_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'scheme_name is required' if scheme_name.nil?
        raise ArgumentError, 'template_name is required' if template_name.nil?

        @connection.call(
          :GET,
          '/dedicated/installationTemplate/{templateName}/partitionScheme/{schemeName}/hardwareRaid/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{schemeName}', ERB::Util.url_encode(scheme_name.to_s))
            .gsub('{templateName}', ERB::Util.url_encode(template_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def template_name_partition_scheme_scheme_name_partition_get(scheme_name:, template_name:)
        raise ArgumentError, 'scheme_name is required' if scheme_name.nil?
        raise ArgumentError, 'template_name is required' if template_name.nil?

        @connection.call(
          :GET,
          '/dedicated/installationTemplate/{templateName}/partitionScheme/{schemeName}/partition'
            .gsub('{schemeName}', ERB::Util.url_encode(scheme_name.to_s))
            .gsub('{templateName}', ERB::Util.url_encode(template_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def template_name_partition_scheme_scheme_name_partition_mountpoint_get(mountpoint:, scheme_name:, template_name:)
        raise ArgumentError, 'mountpoint is required' if mountpoint.nil?
        raise ArgumentError, 'scheme_name is required' if scheme_name.nil?
        raise ArgumentError, 'template_name is required' if template_name.nil?

        @connection.call(
          :GET,
          '/dedicated/installationTemplate/{templateName}/partitionScheme/{schemeName}/partition/{mountpoint}'
            .gsub('{mountpoint}', ERB::Util.url_encode(mountpoint.to_s))
            .gsub('{schemeName}', ERB::Util.url_encode(scheme_name.to_s))
            .gsub('{templateName}', ERB::Util.url_encode(template_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
