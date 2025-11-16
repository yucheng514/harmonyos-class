@Component
export default struct HomeHeader {
  build() {
    Row() {
      Text('头部')
        .width('100%')
        .textAlign(TextAlign.Center)
    }
    .width('100%')
    .height(60)
    .backgroundColor(Color.Pink)
  }
}
