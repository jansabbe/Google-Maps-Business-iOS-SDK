Pod::Spec.new do |s|
  s.name = 'Google-Maps-Business-iOS-SDK'
  s.version = '1.6.2'
  s.summary = 'Google Maps Business SDK for iOS.'
  s.description = 'Use the Google Maps SDK for iOS to add interactive maps, and immersive Street View panoramas to your app. This is the business version'
  s.homepage = 'https://developers.google.com/maps/documentation/ios/'
  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
	See https://developers.google.com/maps/documentation/business/support#terms_of_use
    LICENSE
  }
  s.author = 'Google Inc.'

  s.source = { :http => 'https://dl.google.com/geosdk/GoogleMapsM4B-iOS-1.6.2.zip', :flatten => true }
  s.platform = :ios
  s.ios.deployment_target = '6.0'

  framework_path = 'GoogleMapsM4B.framework'

  s.source_files = "#{framework_path}/Versions/A/Headers/*.h"
  s.resource = "#{framework_path}/Versions/A/Resources/GoogleMaps.bundle"

  s.preserve_paths = framework_path
  s.header_dir = 'GoogleMapsM4B'

  s.frameworks = 'GoogleMapsM4B', 'AVFoundation', 'CoreData', 'CoreLocation', 'CoreText', 'GLKit', 'ImageIO', 'OpenGLES', 'QuartzCore', 'SystemConfiguration', 'CoreGraphics'
  s.libraries = 'icucore', 'c++', 'z'

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Google-Maps-Business-iOS-SDK"' }
end

