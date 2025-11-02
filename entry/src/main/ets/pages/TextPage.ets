@Entry
@Component
struct TextPage {
  build() {
    Row() {
      Column() {
        Image($r('app.media.ShadowPuppets'))
          .width('100%')
        Text('皮影戏')
          .fontSize(25)
          .decoration({
            type: TextDecorationType.Underline,
            color: Color.Blue
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}



