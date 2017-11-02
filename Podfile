source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!
inhibit_all_warnings!

def shared
    pod 'RxSwift', '~> 4.0'
    pod 'RxCocoa', '~> 4.0'
    pod 'RxDataSources', '~> 3.0'
    pod 'RxOptional', '~> 3.0'
    pod 'SnapKit', '~> 4.0'
    pod 'Kingfisher', '~> 4.0'
    pod 'Result', '~> 3.0'
end

target 'Reactant' do
    platform :ios, '9.0'

    shared
end

target 'ReactantTests' do
    platform :ios, '9.0'

    shared

    pod 'Quick', '~> 1.1'
    pod 'Nimble', '~> 7.0'
end

target 'ReactantPrototyping' do
    platform :ios, '9.0'

    shared

    pod 'Reactant', :path => './'
end

target 'TVPrototyping' do
    platform :tvos, '9.0'
    shared

    pod 'Reactant', :path => './'
    pod 'Reactant/TableView', :path => './'
    pod 'Reactant/CollectionView', :path => './'
end

# Required until CocoaPods adds support for targets with multiple Swift versions or when all dependencies support Swift 4.0
#post_install do |installer|
#    installer.pods_project.targets.each do |target|
#        if target.name != 'Reactant'
#            target.build_configurations.each do |config|
#                config.build_settings['SWIFT_VERSION'] = '3.2'
#            end
#        end
#    end
#end
