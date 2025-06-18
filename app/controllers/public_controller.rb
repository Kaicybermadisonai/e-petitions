class PublicController < ApplicationController
  content_security_policy do |policy|
    policy.connect_src :self,
      "https://*.google-analytics.com",
      "https://*.analytics.google.com",
      "https://*.googletagmanager.com"

    policy.frame_src :self,
      "https://*.google-analytics.com",
      "https://*.googletagmanager.com"

    policy.img_src :self,
      "https://*.google-analytics.com",
      "https://*.googletagmanager.com"

    policy.script_src :self,
      "https://*.googletagmanager.com"
  end
end
