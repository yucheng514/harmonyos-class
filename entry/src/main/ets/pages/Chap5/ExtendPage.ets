import { PromptAction, UIContext } from '@kit.ArkUI';
let promptAction: PromptAction = new UIContext().getPromptAction();

@Extend(Button)
function PayButton(type: 'alipay' | 'wechat') {
  .type(ButtonType.Normal)
  .fontColor(Color.White)
  .width('100%')
  .height(50)
  .borderRadius(8)
  .fontSize(20)
  .backgroundColor(type === 'wechat' ? Color.Green : Color.Blue)
  .onClick(() => {
    if(type === 'alipay') {
      promptAction.showToast({ message: '支付宝支付成功' });
    } else {
      promptAction.showToast({ message: '微信支付成功' });
    }
  })
}
@Entry
@Component
struct ExtendPage {
  build() {
    Column({ space: 10 }) {
      Button('微信支付')
        .PayButton('wechat')
      Button('支付宝支付')
        .PayButton('alipay')
    }
    .padding({ top: 100, left: 20, right: 20 })
    .width('100%')
  }
}
