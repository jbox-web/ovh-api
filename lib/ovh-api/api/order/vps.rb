# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Vps
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/order/vps',
          type: nil,
          auth: []
        )
      end

      def service_name_additional_disk_duration_get(additional_disk_size:, duration:, service_name:)
        raise ArgumentError, 'additional_disk_size is required' if additional_disk_size.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/additionalDisk/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'additionalDiskSize' => additional_disk_size }
        )
      end

      def service_name_additional_disk_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/vps/{serviceName}/additionalDisk/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_additional_disk_get(additional_disk_size:, service_name:)
        raise ArgumentError, 'additional_disk_size is required' if additional_disk_size.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/additionalDisk'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'additionalDiskSize' => additional_disk_size }
        )
      end

      def service_name_automated_backup_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/automatedBackup/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_automated_backup_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/vps/{serviceName}/automatedBackup/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_automated_backup_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/automatedBackup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cpanel_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/cpanel/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cpanel_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/vps/{serviceName}/cpanel/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cpanel_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/cpanel'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ftpbackup_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/ftpbackup/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ftpbackup_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/vps/{serviceName}/ftpbackup/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ftpbackup_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/ftpbackup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_plesk_duration_get(domain_number:, duration:, service_name:)
        raise ArgumentError, 'domain_number is required' if domain_number.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/plesk/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'domainNumber' => domain_number }
        )
      end

      def service_name_plesk_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/vps/{serviceName}/plesk/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_plesk_get(domain_number:, service_name:)
        raise ArgumentError, 'domain_number is required' if domain_number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/plesk'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'domainNumber' => domain_number }
        )
      end

      def service_name_snapshot_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/snapshot/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_snapshot_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/vps/{serviceName}/snapshot/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_snapshot_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/snapshot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_upgrade_duration_get(duration:, model:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'model is required' if model.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'model' => model }
        )
      end

      def service_name_upgrade_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/vps/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_upgrade_get(model:, service_name:)
        raise ArgumentError, 'model is required' if model.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/upgrade'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'model' => model }
        )
      end

      def service_name_veeam_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/veeam/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_veeam_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/vps/{serviceName}/veeam/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_veeam_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/veeam'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_windows_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/windows/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_windows_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/vps/{serviceName}/windows/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_windows_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/vps/{serviceName}/windows'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
