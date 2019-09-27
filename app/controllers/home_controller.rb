class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def push
    File.open("service.json", 'w') do |file|
      file.write(params.to_json)
    end
    render plain: "PUSH OK"
  end

  def ping
    json = JSON.parse File.read("service.json")
    subscription = json["subscription"]

    Webpush.payload_send(
      endpoint: subscription["endpoint"],
      message: "this is a test message",
      p256dh: subscription["keys"]["p256dh"],
      auth: subscription["keys"]["auth"],
      ttl: 60 * 60 * 24,
      vapid: {
        public_key: VAPID_PUBLIC_KEY,
        private_key: VAPID_PRIVATE_KEY
      }
    )
    render plain: "PING OK"
  end
end
