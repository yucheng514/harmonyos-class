import { common } from '@kit.AbilityKit';
@Entry
@Component
struct PayIndex {
  @StorageProp('order_id') order_id: Number = 0;
  build() {
    Row() {
      Column({space: 10}) {
        Text('PayAbility PayIndex.ets')

        Text("order_id:" + this.order_id.toString())
        Button('开始支付')
          .onClick(() => {
            const context = getContext() as common.UIAbilityContext;
            context.terminateSelfWithResult({
              resultCode: 1,
              want: {
                deviceId: '',
                bundleName: 'com.example.harmonyos_class',
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
