Pod::Spec.new do |spec|
  spec.name         = "FrameworkTesting"
  spec.version      = "0.0.8"
  spec.summary      = "A testing framework"
  spec.description  = "A testing framework about resource, internal Cocoapods usage, strings, etc..."

  spec.homepage     = "https://github.com/ngo275"
  spec.license      = "MIT"

  spec.author             = { "ngo275" => "ngo38114@gmail.com" }
  spec.social_media_url   = "https://twitter.com/ngo275"
  spec.platform     = :ios
  # spec.platform     = :ios, "5.0"
  spec.ios.deployment_target = "12.0"
  spec.swift_version = "5.1"

  spec.source       = { :git => "https://github.com/ngo275/FrameworkTesting.git", :tag => "#{spec.version}" }
  spec.source_files  = "OriginalFramework/**/*.{swift,m,h}"
  spec.public_header_files = "OriginalFramework/**/*.h"
  spec.frameworks = "UIKit", "Foundation"
  # spec.vendored_frameworks = "OriginalFramework/HDWallet.framework"
  #spec.resource_bundle = { "OriginalFramework" => ["OriginalFramework/*.lproj/*.strings"] }
  # spec.resource  = "icon.png"
  spec.resources = "OriginalFramework/**/*.{lproj,storyboard}"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # spec.framework  = "SomeFramework"
  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
