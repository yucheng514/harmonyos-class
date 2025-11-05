@Entry
@Component
struct ButtonExample {
    build() {
        Row(){
            Column({space: 30}){
                Button('登录')
                    .width(100)
                    .type(ButtonType.Normal)
                    .borderRadius(10)

                Button({ type: ButtonType.Normal, stateEffect: true }) {
                    Row(){
                        LoadingProgress().width(20).height(20).margin({ left: 12 }).color(0xFFFFFF)
                        Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
                    }.alignItems(VerticalAlign.Center)
                }.borderRadius(8).backgroundColor(0x317aff).width(90).height(40)
            }.width('100%')
        }.height('100%')
    }
}

