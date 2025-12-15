import { promptAction } from '@kit.ArkUI';
@Entry
@Component
struct WatchCounterExample {
  @Watch('onCountChange')
  @State count: number = 0
  onCountChange() {
    if (this.count % 5 === 0) {
      promptAction.showToast({
        message: `计数已达到${this.count}！`
      })
    }
  }
  build() {
    Column({ space: 20 }) {
      Text(`当前计数：${this.count}`)
        .fontSize(24)

      Row({ space: 20 }) {
        Button('-1')
          .onClick(() => {
            this.count--
          })

        Button('+1')
          .onClick(() => {
            this.count++
          })
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
