@Entry
@Component
struct IfPage {
  @State showImg: boolean = true;
  build() {
    Row() {
      Column() {
        Checkbox()
          .select(this.showImg)
          .onChange(isON => {
            this.showImg = isON;
          })
        if (this.showImg) {
          Image($r('app.media.coin'))
            .width(150)
            .height(150)
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}
