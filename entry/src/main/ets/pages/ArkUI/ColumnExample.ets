// xxx.ets
@Entry
@Component
struct ColumnExample {
    build() {
        Column({space:30}) {
            Column().width(200).height(100).backgroundColor(Color.Orange)
            Column().width(200).height(100).backgroundColor(Color.Blue)
            Column().width(200).height(100).backgroundColor(Color.Red)
            Column().width(200).height(100).backgroundColor(Color.Pink)

        }.height('100%').width('100%').backgroundColor(Color.Gray)
        .alignItems(HorizontalAlign.Center)
        .justifyContent(FlexAlign.SpaceBetween)
    }
}