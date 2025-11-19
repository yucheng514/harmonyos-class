interface ICardItem {
  leftValue: string;
  rightValue: string;
}
@Entry
@Component
struct BuilderPage2 {
  @State area: string = '西直门';
  @Builder
  getCellContent($$: ICardItem) {
    Row() {
      Row() {
        Text($$.leftValue)
        Text($$.rightValue)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ left: 15, right: 15 })
      .backgroundColor(Color.White)
      .borderRadius(8)
      .height(40)
    }
    .padding({ left: 20, right: 20 })
  }
  build() {
    Column({ space: 10 }) {
      Text(this.area)
      this.getCellContent({ leftValue: '异常位置', rightValue: this.area })
      this.getCellContent({ leftValue: '异常时间', rightValue: '2024-4-10' })
      this.getCellContent({ leftValue:'异常类型', rightValue:'无法锁车'})
      Button('上报位置')
        .onClick(() => {
          this.area = '望京';
        })
    }
    .width('100%')
    .padding({ top: 20 })
    .backgroundColor('#ccc')
    .height('100%')
  }
}
