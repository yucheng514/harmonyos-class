@Entry
@Component
struct StackPage {
  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Flex({ wrap: FlexWrap.Wrap }) {
        ForEach(new Array(14).fill(0), (item:number, index) => {
          Text('App1')
            .width(100)
            .height(100)
            .fontSize(18)
            .margin(10)
            .textAlign(TextAlign.Center)
            .borderRadius(10)
            .fontColor(Color.Black)
            .backgroundColor(0xFFFFFF)
        })
      }
      .width('100%')
      .height('100%')
      Flex({ justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center }) {
        Text('联系人').fontSize(16)
        Text('设置').fontSize(16)
        Text('短信').fontSize(16)
      }
      .width('50%')
      .height(50)
      .backgroundColor('#16302e2e')
      .margin({ bottom: 15 })
      .borderRadius(15)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#CFD0CF')
  }
}
