import { router } from '@kit.ArkUI';
import('library/src/main/ets/pages/Pay');
@Entry
@Component
struct ModeRouter2 {
  build() {
    Row() {
      Column() {
        Button('跳转支付页面2')
          .onClick(() => {
            // router.pushNamedRoute({
            this.getUIContext().getRouter().pushNamedRoute({
              name: 'pay_index'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
