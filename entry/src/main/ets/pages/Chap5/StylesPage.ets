import { promptAction } from '@kit.ArkUI';
@Styles
function payStyle1() {
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
  payStyle2() {
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
      ForEach(new Array(3).fill(1), (item:number) => {
        Row() {
          Button('微信支付', { type: ButtonType.Normal })
            .payStyle1()
            .fontColor(Color.White)
        }.padding(10)
      })
      ForEach(new Array(3).fill(1), (item:number) => {
        Row() {
          Button('支付宝支付', { type: ButtonType.Normal })
            .payStyle2()
            .fontColor(Color.White)
        }.padding(10)
      })
    }
  }
}
