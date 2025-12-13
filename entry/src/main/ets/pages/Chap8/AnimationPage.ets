@Entry
@Component
struct AnimationPage {
  @State widthSize: number = 100;
  @State heightSize: number = 50;
  build() {
    Row() {
      Column() {
        Button('动画效果')
          .width(this.widthSize)
          .height(this.heightSize)
          .backgroundColor(Color.Red)
          .animation({
            duration: 1000,
            iterations: -1,
            curve: Curve.Ease,
            delay: 1000,
            playMode: PlayMode.Alternate
          })
        Button('开始动画')
          .margin({ top: 10 })
          .backgroundColor(Color.Black)
          .onClick(() => {
            this.widthSize = 200;
            this.heightSize = 100;
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
