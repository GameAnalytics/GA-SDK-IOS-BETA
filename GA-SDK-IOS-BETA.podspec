Pod::Spec.new do |s|
  s.name             = "GA-SDK-IOS-BETA"
  s.version          = "2.2.18.0"
  s.homepage         = "https://github.com/GameAnalytics/GA-SDK-IOS-BETA"
  s.author           = { "GameAnalytics" => "sdk@gameanalytics.com" }
  s.summary          = "GameAnalytics beta SDK for iOS"
  s.social_media_url = "https://twitter.com/gameanalytics"

  s.source           = { :git => "https://github.com/GameAnalytics/GA-SDK-IOS-BETA.git", :tag => "#{s.version}" }

  s.source_files    = "GameAnalytics.framework/**/*.{h,m}"
  s.preserve_paths      = "GameAnalytics.framework"
  s.public_header_files = "GameAnalytics.framework/**/*.h"
  s.frameworks = 'AdSupport', 'SystemConfiguration'
  s.vendored_frameworks = 'GameAnalytics.framework'

  s.library = 'z', 'sqlite3'

  s.platform = :ios, '6.0'
  s.requires_arc = true

  s.license  = {
    :type => 'MIT',
    :text => <<-LICENSE
      Copyright (c) 2014, GameAnalytics.
      All rights reserved.
    LICENSE
  }
end
