@Entry
@Component
struct ButtonExample {
    build() {
        Row(){
            Column(){
                Button('登录')
                    .width(100)
                    .type(ButtonType.Normal)
                    .borderRadius(10)
            }.width('100%')
        }.height('100%')
    }
}

