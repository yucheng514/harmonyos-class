@Entry
@Component
struct AnimateToPage {
  @State scaleValue: number = 1;
  build() {
    Row() {
      Column({ space: 20 }) {
        Column() {
          Text('动画效果')
            .fontSize(20)
            .fontColor(Color.White)
            .height(100)
            .width('50%')
            .textAlign(TextAlign.Center)
            .backgroundColor(Color.Blue)
            .scale({ x: this.scaleValue, y: this.scaleValue })
        }
        .height(100)
        Button('放大/缩小')
          .onClick(() => {
            animateTo({ duration: 1000 }, () => {
              this.scaleValue = this.scaleValue == 2 ? 1 : 2;
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
