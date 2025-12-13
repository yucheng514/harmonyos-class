@Entry
@Component
struct TransitionPage {
  @State isShow: Boolean = false;
  build() {
    Column() {
      Column(){
        Button('出现/消失')
          .onClick(() => {
            this.isShow = !this.isShow;
          })
      }
      .width('100%')
      .height(100)
      Column() {
        if (this.isShow) {
          Image($r('app.media.coin'))
            .width(100)
            .height(100)
            .borderRadius(50)
            .transition(
              TransitionEffect.asymmetric(
                TransitionEffect.OPACITY.animation({ duration: 1000 })
                  .combine(TransitionEffect.rotate({ angle: -180 }))
                  .combine(TransitionEffect.move(TransitionEdge.START)),
                TransitionEffect.OPACITY.animation({ duration: 1000 })
                  .combine(TransitionEffect.rotate({ angle: 180 }))
                  .combine(TransitionEffect.move(TransitionEdge.END))
              )
            )
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}
