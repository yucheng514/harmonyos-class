@Entry
@Component
struct LoginPage {
  build() {
    Column() {
      // 顶部区域
      Row() {
        Image($r('app.media.hw_cancel'))
          .width(20)
        Text('帮助')
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      // logo图标
      Image($r('app.media.huawei'))
        .width(100)
        .margin({ top: 50, bottom: 60 })
      // 国家/地址区域
      Row() {
        Text('国家/地区')
          .layoutWeight(1)
          .fontColor('#666')
        Text('中国(+86)')
          .margin({ right: 5 })
          .fontColor('#666')
        Image($r('app.media.hw_right'))
          .width(20)
          .fillColor('#666')
      }
      .width('100%')
      .height(40)
      .backgroundColor('#fff')
      .borderRadius(20)
      .padding({ left: 15, right: 10 })
      // 手机号
      TextInput({ placeholder: '请输入手机号' })
        .placeholderColor('#666')
        .height(40)
        .borderRadius(20)
        .backgroundColor('#fff')
        .margin({ top: 20 })
      // 注册协议
      Row() {
        Checkbox()
          .width(14)
          .margin({ top: 7 })
        Text() {
          Span('我已经阅读并同意')
          Span('《华为隐私政策》').fontColor('#3274f6')
          Span('《华为用户服务协议》').fontColor('#3274f6')
          Span('，未注册的手机号将自动创建华为账号')
        }
        .fontSize(15)
        .fontColor('#666')
        .lineHeight(22)
      }
      .alignItems(VerticalAlign.Top)
      .margin({ top: 20, right: 16 })
      // 登录按钮
      Button('登录')
        .width('100%')
        .backgroundColor('#bf2838')
        .margin({ top: 25 })
      // 登录按钮下方的文字
      Row({ space: 25 }) {
        Text('新用户注册').fontSize(14).fontColor('#666')
        Text('账户密码登录').fontSize(14).fontColor('#666')
        Text('无法登录').fontSize(14).fontColor('#666')
      }
      .margin({ top: 15 })
      // 填充空白区域
      Blank()
      // 其他登录方式
      Column() {
        Text('其他登录方式')
          .fontColor('#666')
          .height(22)
          .fontSize(14)
          .margin({ bottom: 20 })
        Row() {
          Image($r('app.media.hw_wechat')).width(34).fillColor('#56a44a')
          Image($r('app.media.hw_weibo')).width(34).fillColor('#c8493b')
          Image($r('app.media.hw_qq')).width(34).fillColor('#4ba0e8')
        }
        .width('60%')
        .margin({ bottom: 20 })
        .justifyContent(FlexAlign.SpaceAround)
      }
      .width('100%')
    }
    .padding(20)
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.hw_login_bg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}