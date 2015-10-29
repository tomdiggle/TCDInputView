Pod::Spec.new do |s|
  s.name         = "TCDInputView"
  s.version      = "0.1.0"
  s.summary      = "TCDInputView is an open source custom input view which is displayed when a text field becomes the first responder."
  s.homepage     = "https://github.com/tomdiggle/TCDInputView"
  s.screenshots  = "http://tomdiggle.com/assets/images/tcdinputview.png" 
  s.license      = 'MIT'
  s.author       = { "Tom Diggle" => "tom@tomdiggle.com" }
  s.social_media_url = "https://twitter.com/tomdiggle"
  s.source       = { :git => "https://github.com/tomdiggle/TCDInputView.git", :tag => "0.1.0" }
  s.requires_arc = true
  s.platform     = :ios, '9.0'
  s.source_files = 'TCDInputView'
  s.resources = "TCDInputView/Images/*.png"
end
