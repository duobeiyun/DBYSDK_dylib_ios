## Requirements

- iOS 8.0+

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) 是iOS的一个依赖管理工具。使用它我们可以很方便的集成sdk, 在你的 `Podfile` 中添加这些配置:

```ruby
pod 'DBYSDK_dylib'
```
### Manually

如果你之前没有使用过依赖管理工具，你也可以手动添加这些framework到你的项目中。

#### Embedded Framework
- 在我们的[官网](http://docs.duobeiyun.com/ios)下载SDK然后解压。
- 选中你的项目在Xcode的导航栏中，然后在"Targets"选中你的target然后在上面的导航栏中选中"Build Phases"。
- 展开"Link Binary with Libraries"。
- 点击 `+` 按钮 添加 `DBYSDK_dylib.framework` 

## 使用
### demo运行
在有`podfile`的目录下，打开命令行，执行`pod install`。然后打开DBYSharedVideoDemo.xcworkspace。

### 环境切换
由于我们的之前的业务在com环境上，现在有一部分新的业务在net环境。所以提供这个接口供切换。
```objc
//切换到net
[DBYClient setDomainType:DBYDomainTypeNet];
//切换到com
[DBYClient setDomainType:DBYDomainTypeCom];
```
注意：需要在进入教室之前使用

### 直播文档
[直播文档](./docs/live.md)
### 在线回放文档
[在线回放文档](./docs/onlinePlayback.md)
### 离线回放文档
[离线回放文档](./docs/offlinePlayback.md)

## FAQ

### 回放进不去？
请在test_courses.json文件中填写正确的信息。

### 对接新版大班？
请参考 https://github.com/duobeiyun/DBYSharedVideoDemo_OC

## 注意事项&更新内容
[注意事项](./update.md)

