# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'
use_frameworks!

def rx_pods
	pod 'RxSwift', '4.0.0-beta.0'
	pod 'RxCocoa', '4.0.0-beta.0'
end

target 'playground' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks

  # Pods for playground
	rx_pods

  target 'playgroundTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'playgroundUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
