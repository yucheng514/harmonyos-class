@Component
struct BuilderParamPanel {
  panelHeight = 300;
  panelColor = Color.Gray;
  @Builder
  bodyBuilder() {}
  @BuilderParam
  body: () => void = this.bodyBuilder;
  build() {
    Column() {
      Column() {
        this.body()
      }
      .backgroundColor(this.panelColor)
      .width('100%')
      .height(this.panelHeight)
      .borderRadius(20)
    }
    .padding(20)
  }
}
@Entry
@Component
struct BuilderParam3 {
  build() {
    Column({ space: 20 }) {
      BuilderParamPanel({ panelHeight: 200, panelColor: Color.Pink }) {
        Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap, justifyContent: FlexAlign.Center }) {
          ForEach([1, 2, 3, 4, 5, 6], (item: number) => {
            Button('测试' + item)
              .margin({ left: 10, top: 10 })
          })
        }
      }
      BuilderParamPanel({ panelHeight: 100, panelColor: Color.Orange })
    }
  }
}
