#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint twilio_voice_mimp.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'twilio_voice_mimp'
  s.version          = '0.0.2'
  s.summary          = 'Provides an interface to Twilio&#x27;s Programmable Voice SDK to allows adding voice-over-IP (VoIP) calling into your Flutter applications.'
  s.description      = <<-DESC
  Provides an interface to Twilio&#x27;s Programmable Voice SDK to allows adding voice-over-IP (VoIP) calling into your Flutter applications.
                       DESC
  s.homepage         = 'https://github.com/KundKMC/twilio_voice/'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Markus Klein' => 'markus@mimp.tech' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'TwilioVoice','~> 6.3.0'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
end
