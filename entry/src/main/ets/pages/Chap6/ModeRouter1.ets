import { router } from '@kit.ArkUI';
@Entry
@Component
struct ModeRouter1 {
  build() {
    Row() {
      Column() {
        Button('跳转支付页面')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushUrl({
              url: '@bundle:com.example.harmonyos_class/library/ets/pages/Index'
            });
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
