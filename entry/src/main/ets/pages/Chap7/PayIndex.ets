import { common } from '@kit.AbilityKit';
@Entry
@Component
struct PayIndex {
  @StorageProp('order_id') order_id: Number = 0;
  build() {
    Row() {
      Column() {
        Text(this.order_id.toString())
        Button('开始支付')
          .onClick(() => {
            const context = getContext() as common.UIAbilityContext;
            context.terminateSelfWithResult({
              resultCode: 1,
              want: {
                deviceId: '',
                bundleName: 'com.example.myapplication',
                abilityName: 'EntryAbility',
                parameters: {
                  pay_result: true
                }
              }
            });
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
