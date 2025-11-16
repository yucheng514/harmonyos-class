@Component
export default struct HomeFooter {
  build() {
    Row() {
      Text('底部')
        .width('100%')
        .textAlign(TextAlign.Center)
    }
    .width('100%')
    .height(60)
    .backgroundColor(Color.Pink)
  }
}
