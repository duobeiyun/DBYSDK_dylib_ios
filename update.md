## iOS SDK 接口变更文档
### 1.8.9
---
1、视频显示
```objc
//设置自己视频显示区域
- (void)setLocalVideoView:(UIView *)localView;
//设置学生视频显示区域
- (void)setStudentViewWith:(UIView *)studentView;
//设置老师视频显示区域（视频课可用）
- (void)setTeacherViewWith:(UIView *)teacherView;
```

2、退出教室回调增加参数
```objc
- (void)quitClassRoomWithCompleteHandler:(void (^)(NSString *))completeHandler;
```

3、增加直播错误回调状态
```objc
DBYLiveManagerEnterRoomErrorTypeTestVMEmpty = 902,//测速列表为空
DBYLiveManagerEnterRoomErrorTypeTestVMTimeout = 903,//测速超时
```

4、新增设置ppt加载失败显示图片接口
```objc
-(void)setPPTViewLoadFailedImage:(UIImage *)image;
```

5、新增主动下台接口
```objc
- (void)requestOffTheStageWithCompleteHandler:(void(^)(NSString *errorMsg))completeHandler;
```

### 1.8.10
---
1、回放退出教室增加状态码
```objc
- (void)stopPlayWithCompleteHandler:(void (^)(int code, NSString *message))completeHandler;
```

2、回放进入教室新增错误码类型
```objc
DBYOnlinePlayBackManagerStartPlayBackErrorTypeParamsError = 1, //参数错误，比如传了空的参数
DBYOnlinePlayBackManagerStartPlayBackErrorTypeParamsParseError = 2,//参数解析错误，比如传了authinfo字符串参数，但是不是json格式的
DBYOnlinePlayBackManagerStartPlayBackErrorTypeAuthInfoError = 900, //url等进教室，请求authinfo失败错误
```

3、回放新增接口
```objc
- (void)startPlaybackWithAuthInfo:(DBYAuthInfo *)authinfo seekTime:(NSTimeInterval)seekTime completeHandler:(void (^)(NSString *message, DBYOnlinePlayBackManagerStartPlayBackErrorType type))completeHandler;
```

4、DBYAuthInfoUtil.h新增接口，直接获取DBYAuthInfo对象
```objc
+ (void)authInfoWithUrl:(NSString *)url
successHandler:(DBYAuthInfoBlock)successHandler
failHandler:(void (^)(NSError *error))failHandler;

+ (void)authInfoWithInviteCode:(NSString *)code nickName:(NSString *)nickName successHandler:(DBYAuthInfoBlock)successHandler failHandler:(void (^)(NSError *))failHandler;

+ (void)authInfoWithRoomID:(NSString *)roomID uid:(NSString *)uid
userName:(NSString *)userName
userRole:(int)userRole
partnerId:(NSString *)partnerId
appkey:(NSString *)appkey
isDev:(BOOL)isDev
successHandler:(DBYAuthInfoBlock)successHandler
failHandler:(void (^)(NSError *error))failHandler;
```

### 1.8.10.1
---
1、修复所有聊天中，老师聊天消息缺失问题

### 1.8.10.4
---
1、修复在线回放url进教室失败问题
2、修复离线回放后台播放问题
3、一些其他优化

### 1.8.10.5
---
1、调整在线回放状态码DBYOnlinePlayBackManagerStartPlayBackErrorTypeNoError为0
2、修复直播学生下台后无法听到老师声音的问题

### 1.9.0
1、修复iOS8的崩溃
2、修复在线回放崩溃
3、修复在线回放有时候退出还有声音问题
4、修复在线回放进教室没有任何内容的问题
5、对在线回放seek和退出过慢进行了优化
6、新增老师下课回调
```objc
- (void)liveManagerClassOver:(DBYLiveManager *)manager;
```

### 1.9.1
1、修复iOS13的视频显示问题

### 1.9.2
1、修复在线回放后台无法播放问题
2、修复视频大小切换后模糊不清的问题
3、修复在线回放崩溃

### 1.9.3
1、修复断线重连后本地视频状态异常的问题
2、回放播放失败自动切换线路
3、离线回放新增接口，能保证播放、停止的顺序
```objc
- (void)startPlaybackWithRoomID:(NSString *)roomId
       filePath:(NSString *)filePath
completeHandler:(void (^)( int code, NSString *message))completeHandler;
```

### 1.9.7
1、修复禁言状态问题
