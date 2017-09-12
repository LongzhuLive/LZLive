#
#  Be sure to run `pod spec lint LZLive.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "LZLive"
  s.version      = "3.0.7"
  s.summary      = "LZLive"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                    龙珠直播的LZLive
                   DESC

  s.homepage     = "https://github.com/LongzhuLive/LZLive"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "DarrenYau" => "jiqiu@pptv.com" }
  # Or just: s.author    = "DarrenYau"
  # s.authors            = { "DarrenYau" => "jiqiu@pptv.com" }
  # s.social_media_url   = "http://twitter.com/DarrenYau"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
    s.platform     = :ios, "7.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/LongzhuLive/LZLive.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

    s.requires_arc = true
    s.ios.vendored_frameworks = "LZLive.framework"

  # s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
   s.resources = "LZLive.framework/*.bundle"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

    s.framework  = "UIKit", "QuartzCore", "Foundation"
    s.libraries = "z", "stdc++", "c++", "resolv.9", "sqlite3"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
    s.dependency "AFNetworking", "~> 3.1.0"
    s.dependency "Masonry", "~> 1.0.1"
    s.dependency "MBProgressHUD", "~> 0.9.1"
    s.subspec "GIF" do |ss|
        ss.ios.deployment_target = "7.0"
        ss.dependency "SDWebImage/Core", "~> 4.0.0"
        ss.dependency "FLAnimatedImage", "~> 1.0.8"
    end
    s.dependency "SSZipArchive", "~> 1.7"
    s.dependency "PocketSocket", "~> 1.0.1"
    s.dependency "YYKit", "~> 1.0.9"
    s.dependency 'KVOController', "~> 1.2.0"
    s.dependency 'MJRefresh', "~> 3.1.0"
    s.dependency "WebViewJavascriptBridge", "~> 6.0.2"
# PLU Frameworks
    s.dependency "PLUFoundation", "~> 0.0.1"
    s.dependency "PLUUIKit", "~> 0.0.1"
    s.dependency "PLUUIComponents", "~> 0.0.1"
    s.dependency "PLUAnalytics", "~> 0.0.1"
    s.dependency "PLUNetworking", "~> 0.0.1"
    s.dependency "LZ-HappyDNS", "~> 0.0.1"
    s.dependency "PLUDiagnose", "~> 0.0.2"
    s.dependency "PLUReporter", "~> 0.0.1"
    s.dependency "SNPlayerSDK", "~> 0.0.1"
    s.dependency "PLUPlayingAdapter", "~> 0.0.1"

end