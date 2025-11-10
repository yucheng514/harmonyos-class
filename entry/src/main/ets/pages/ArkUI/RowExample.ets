// xxx.ets
@Entry
@Component
struct RowExample {
    build() {
        Row() {
            Row().width(30).height(30).backgroundColor(Color.Red)
            Row().width(30).height(30).backgroundColor(Color.Blue)
            Row().width(30).height(30).backgroundColor(Color.Green)
            Row().width(30).height(30).backgroundColor(Color.Yellow)
        }.width('100%').height(60).backgroundColor(Color.Gray)
        .alignItems(VerticalAlign.Top)
        .justifyContent(FlexAlign.Center)
    }
}