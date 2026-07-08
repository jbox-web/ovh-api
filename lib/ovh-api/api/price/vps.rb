# frozen_string_literal: true

module Ovh::Api
  module Api
    class Price::Vps
      def initialize(connection)
        @connection = connection
      end

      def call_2013v1_classic_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2013v1/classic/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_cloud_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2013v1/cloud/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_cloud_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2013v1/cloud/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2013v1_lowlat_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2013v1/lowlat/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_classic_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2014v1/classic/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_cloud_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2014v1/cloud/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2014v1_cloud_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2014v1/cloud/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2015v1_cloud_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2015v1/cloud/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2015v1_cloud_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2015v1/cloud/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2015v1_cloudram_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2015v1/cloudram/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2015v1_cloudram_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2015v1/cloudram/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2015v1_ssd_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2015v1/ssd/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2015v1_ssd_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2015v1/ssd/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v1_ssd_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v1/ssd/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v1_ssd_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v1/ssd/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v2_cloud_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v2/cloud/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v2_cloud_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v2/cloud/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v2_cloudram_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v2/cloudram/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v2_cloudram_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v2/cloudram/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v2_ssd_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v2/ssd/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v2_ssd_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v2/ssd/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v3_cloud_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v3/cloud/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v3_cloud_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v3/cloud/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v3_cloudram_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v3/cloudram/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v3_cloudram_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v3/cloudram/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v3_ssd_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v3/ssd/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2017v3_ssd_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2017v3/ssd/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_cloud_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2018v1/cloud/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_cloud_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2018v1/cloud/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_cloudram_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2018v1/cloudram/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_cloudram_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2018v1/cloudram/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_ssd_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2018v1/ssd/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v1_ssd_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2018v1/ssd/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_ssd_model(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2018v2/ssd/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def call_2018v2_ssd_option(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/2018v2/ssd/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def classic_model_model_name_get(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/classic/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cloud_model_model_name_get(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/cloud/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cloud_option_option_name_get(option_name:)
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/price/vps/cloud/option/{optionName}'
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def lowlat_model_model_name_get(model_name:)
        raise ArgumentError, 'model_name is required' if model_name.nil?

        @connection.call(
          :GET,
          '/price/vps/lowlat/model/{modelName}'
            .gsub('{modelName}', ERB::Util.url_encode(model_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
