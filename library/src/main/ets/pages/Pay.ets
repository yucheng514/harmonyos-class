@Entry({ routeName: 'pay_index' })
@Component
export struct Pay {
    @State message: string = '支付页面2';
    build() {
        Row() {
            Column() {
                Text(this.message)
                    .fontSize(24)
                    .fontWeight(FontWeight.Bold)
            }
            .width('100%')
        }
        .height('100%')
    }
}