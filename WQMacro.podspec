
Pod::Spec.new do |s|
    s.name         = 'WQMacro'
    s.summary      = 'macro for iOS.'
    s.version      = "0.0.6"
    s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
    © 2016-2016 Vicky. All rights reserved.
    LICENSE
    }
    s.authors      = { 'Vickeywei' => 'weiqi@hzdracom.com' }
    s.homepage     = 'https://github.com/Vickeywei/WQMarco/tree/master/Macro'
    s.platform     = :ios, '7.0'
    s.source       = { :git => 'https://github.com/Vickeywei/WQMarco.git',:tag => "0.0.6" }
    s.requires_arc = true
    s.source_files = 'Macro/*.{h,m}'
end
