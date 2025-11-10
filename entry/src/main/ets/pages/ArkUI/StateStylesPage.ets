@Entry
@Component
struct StateStylesPage {
  build() {
    Column({ space: 20 }) {
      Row() {
        Text('文本1')
      }
      .padding(20)
      .width('100%')
      .height(80)
      .border({ color: '#f3f4f5', width: 3 })
      .borderRadius(4)
      .stateStyles({
        normal: {
          .backgroundColor(Color.White)
        },
        pressed: {
          .backgroundColor('#ccc')
        }
      })
    }
    .padding(20)
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}
