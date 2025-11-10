@Entry
@Component
struct RowPage {
  build() {
    Row({ space: 15 }){
      Row().width(100)
        .height(200)
        .backgroundColor(Color.Gray)
      Row().width(100)
        .height(200)
        .backgroundColor(Color.Gray)
      Row().width(100)
        .height(200)
        .backgroundColor(Color.Gray)
    }.width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Top)
    .justifyContent(FlexAlign.Center)
  }
}