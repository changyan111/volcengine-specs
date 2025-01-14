version = "5.0.29.18"  
# prepare_command = "curl -o getFramework.sh https://tosv.byted.org/obj/iosbinary/getFramework.sh && bash getFramework.sh #{version}"
  Pod::Spec.new do |s|
  s.name             = "TTNetworkManager"
  s.version          = version # 1. Request retry on specified errors 2. Gives more connect tries when ip list is short 3. Add socket idle time and engine startup time info in request log 4. GetStoreIdc send monitor log.
  s.summary          = "iOS client network sdk"
  s.description      = <<-DESC
                       net work

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = 'https://github.com/volcengine/volcengine-specs'

  s.license          = 'MIT'
  s.author           = { "zhangchenlong" => "zhangchenlong@bytedance.com" }

  s.source           = { :http => "https://sf3-ttcdn-tos.pstatp.com/obj/volcengine/#{s.name}/#{s.version}/#{s.name}.zip" }

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.pod_target_xcconfig = {
    # 'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
  s.vendored_framework = 'TTNetworkManager/TTNetworkManager.framework'
#   s.prepare_command = prepare_command

end
