import { promptAction } from '@kit.ArkUI';
@Styles
function payStyle () {
  .width('100%')
  .height(50)
  .borderRadius(4)
  .backgroundColor('#00c168')
  .onClick(() => {
    promptAction.showToast({ message: '微信支付成功' });
  })
}
@Entry
@Component
struct StylesPage {
  @Styles
  payStyle() {
    .width('100%')
    .height(50)
    .borderRadius(4)
    .backgroundColor("#ff1256e0")
    .onClick(() => {
      promptAction.showToast({ message: '支付宝支付成功' });
    })
  }
  build() {
    Column({ space: 20 }) {
      Row() {
        // Button('微信支付', { type: ButtonType.Normal })
        Button('支付宝支付', { type: ButtonType.Normal })
          .payStyle()
          .fontColor(Color.White)
      }
      .padding(10)
      Row() {
        // Button('微信支付', { type: ButtonType.Normal })
        Button('支付宝支付', { type: ButtonType.Normal })
          .payStyle()
          .fontColor(Color.White)
      }
      .padding(10)
      Row() {
        // Button('微信支付', { type: ButtonType.Normal })
        Button('支付宝支付', { type: ButtonType.Normal })
          .payStyle()
          .fontColor(Color.White)
      }
      .padding(10)
    }
  }
}
