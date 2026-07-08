# frozen_string_literal: true

module Ovh::Api
  class Client
    attr_reader :configuration, :connection

    def initialize(base_url: nil, **options, &block)
      @configuration = Configuration.new(base_url: base_url, **options, &block)
      @connection = Connection.new(@configuration)
    end

    def all_dom
      @all_dom ||= Ovh::Api::Api::AllDom.new(@connection)
    end

    def auth
      @auth ||= Ovh::Api::Api::Auth.new(@connection)
    end

    def cdn
      @cdn ||= Ovh::Api::Api::Cdn.new(@connection)
    end

    def cloud
      @cloud ||= Ovh::Api::Api::Cloud.new(@connection)
    end

    def cluster
      @cluster ||= Ovh::Api::Api::Cluster.new(@connection)
    end

    def connectivity
      @connectivity ||= Ovh::Api::Api::Connectivity.new(@connection)
    end

    def contact
      @contact ||= Ovh::Api::Api::Contact.new(@connection)
    end

    def dbaas
      @dbaas ||= Ovh::Api::Api::Dbaas.new(@connection)
    end

    def dedicated
      @dedicated ||= Ovh::Api::Api::Dedicated.new(@connection)
    end

    def dedicated_cloud
      @dedicated_cloud ||= Ovh::Api::Api::DedicatedCloud.new(@connection)
    end

    def domain
      @domain ||= Ovh::Api::Api::Domain.new(@connection)
    end

    def email
      @email ||= Ovh::Api::Api::Email.new(@connection)
    end

    def freefax
      @freefax ||= Ovh::Api::Api::Freefax.new(@connection)
    end

    def horizon_view
      @horizon_view ||= Ovh::Api::Api::HorizonView.new(@connection)
    end

    def hosting
      @hosting ||= Ovh::Api::Api::Hosting.new(@connection)
    end

    def ip
      @ip ||= Ovh::Api::Api::Ip.new(@connection)
    end

    def ip_loadbalancing
      @ip_loadbalancing ||= Ovh::Api::Api::IpLoadbalancing.new(@connection)
    end

    def license
      @license ||= Ovh::Api::Api::License.new(@connection)
    end

    def me
      @me ||= Ovh::Api::Api::Me.new(@connection)
    end

    def metrics
      @metrics ||= Ovh::Api::Api::Metrics.new(@connection)
    end

    def ms_services
      @ms_services ||= Ovh::Api::Api::MsServices.new(@connection)
    end

    def new_account
      @new_account ||= Ovh::Api::Api::NewAccount.new(@connection)
    end

    def nutanix
      @nutanix ||= Ovh::Api::Api::Nutanix.new(@connection)
    end

    def order
      @order ||= Ovh::Api::Api::Order.new(@connection)
    end

    def over_the_box
      @over_the_box ||= Ovh::Api::Api::OverTheBox.new(@connection)
    end

    def ovh_cloud_connect
      @ovh_cloud_connect ||= Ovh::Api::Api::OvhCloudConnect.new(@connection)
    end

    def pack
      @pack ||= Ovh::Api::Api::Pack.new(@connection)
    end

    def partner
      @partner ||= Ovh::Api::Api::Partner.new(@connection)
    end

    def price
      @price ||= Ovh::Api::Api::Price.new(@connection)
    end

    def saas
      @saas ||= Ovh::Api::Api::Saas.new(@connection)
    end

    def secret
      @secret ||= Ovh::Api::Api::Secret.new(@connection)
    end

    def service
      @service ||= Ovh::Api::Api::Service.new(@connection)
    end

    def services
      @services ||= Ovh::Api::Api::Services.new(@connection)
    end

    def sms
      @sms ||= Ovh::Api::Api::Sms.new(@connection)
    end

    def ssl
      @ssl ||= Ovh::Api::Api::Ssl.new(@connection)
    end

    def ssl_gateway
      @ssl_gateway ||= Ovh::Api::Api::SslGateway.new(@connection)
    end

    def stack
      @stack ||= Ovh::Api::Api::Stack.new(@connection)
    end

    def startup
      @startup ||= Ovh::Api::Api::Startup.new(@connection)
    end

    def storage
      @storage ||= Ovh::Api::Api::Storage.new(@connection)
    end

    def supply
      @supply ||= Ovh::Api::Api::Supply.new(@connection)
    end

    def support
      @support ||= Ovh::Api::Api::Support.new(@connection)
    end

    def telephony
      @telephony ||= Ovh::Api::Api::Telephony.new(@connection)
    end

    def veeam
      @veeam ||= Ovh::Api::Api::Veeam.new(@connection)
    end

    def veeam_cloud_connect
      @veeam_cloud_connect ||= Ovh::Api::Api::VeeamCloudConnect.new(@connection)
    end

    def vip
      @vip ||= Ovh::Api::Api::Vip.new(@connection)
    end

    def vps
      @vps ||= Ovh::Api::Api::Vps.new(@connection)
    end

    def vrack
      @vrack ||= Ovh::Api::Api::Vrack.new(@connection)
    end

    def xdsl
      @xdsl ||= Ovh::Api::Api::Xdsl.new(@connection)
    end
  end
end
