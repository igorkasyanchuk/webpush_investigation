# frozen_string_literal: true

VAPID_PUBLIC_KEY = "BHOM9ZVqr7jFMRvIYxe_QKHe1nN-Ff_NZmpkD-hWi_zzZ3zRyX0sxcEyOGx4S1TqavIOMxX9wKyHdIzT5SMlX1M="
VAPID_PRIVATE_KEY = "n5_5PtqrGjjDX03QqG4y7fKer4Vu-zrJ1V8sB1ZYL1M="

Rails.application.configure do
  config.serviceworker.routes.draw do
    # map to assets implicitly
    match "/serviceworker.js"
    match "/manifest.json"

    # Examples
    #
    # map to a named asset explicitly
    # match "/proxied-serviceworker.js" => "nested/asset/serviceworker.js"
    # match "/nested/serviceworker.js" => "another/serviceworker.js"
    #
    # capture named path segments and interpolate to asset name
    # match "/captures/*segments/serviceworker.js" => "%{segments}/serviceworker.js"
    #
    # capture named parameter and interpolate to asset name
    # match "/parameter/:id/serviceworker.js" => "project/%{id}/serviceworker.js"
    #
    # insert custom headers
    # match "/header-serviceworker.js" => "another/serviceworker.js",
    #   headers: { "X-Resource-Header" => "A resource" }
    #
    # anonymous glob exposes `paths` variable for interpolation
    # match "/*/serviceworker.js" => "%{paths}/serviceworker.js"
  end
end
