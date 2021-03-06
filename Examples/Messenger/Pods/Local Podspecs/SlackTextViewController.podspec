@version = "1.0"

Pod::Spec.new do |s|
  s.name         		= "SlackTextViewController"
  s.version      		= @version
  s.summary      		= "A drop-in UIViewController subclass with a custom growing text input and other useful messaging features. Meant to replace UITableViewController & UICollectionViewController."
  s.license         = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author       		= { "Slack Technologies, Inc." => "ios-team@slack-corp.com" }
    s.source        = { :git => "https://github.com/slackhq/SlackTextViewController.git", :tag => "v#{s.version}" }

  s.platform     		= :ios, "7.0"
  s.requires_arc 		= true

  s.header_mappings_dir = 'Source'
  s.source_files 		= "Classes", "Source/Classes/*.{h,m}"
  s.frameworks   		= 'UIKit'

  s.dependency     		'SlackTextViewController/Additions'

  s.subspec 'Additions' do |add|
    add.source_files     = 'Source/Additions/*.{h,m}'
  end
end
