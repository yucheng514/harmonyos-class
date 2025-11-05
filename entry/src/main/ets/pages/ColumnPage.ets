@Entry
@Component
struct ColumnPage {
  build() {
    Column({ space: 50 }) {
      Column()
        .width(200)
        .height(100)
        .backgroundColor(Color.Grey)
      Column()
        .width(150)
        .height(100)
        .backgroundColor(Color.Grey)
      Column()
        .width(100)
        .height(100)
        .backgroundColor(Color.Grey)
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Start)
    .justifyContent(FlexAlign.Center)
  }
}
