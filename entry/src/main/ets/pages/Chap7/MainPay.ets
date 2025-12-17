import { common } from '@kit.AbilityKit';
@Entry
@Component
struct MainPay {
  @State message: string = '';
  build() {
    Row() {
      Column({space: 10}) {
        Text('EntryAbility MainPay.ets')
        Button('去支付')
          .onClick(async () =>  {
            const context = getContext() as common.UIAbilityContext;
            const result = await context.startAbilityForResult({
              deviceId: '',
              bundleName: 'com.example.harmonyos_class',
              abilityName: 'PayAbility',
              parameters: {
                order_id: Date.now()
              }
            });
            this.message = JSON.stringify(result);
          })
        if(this.message){
          Text('Result:'+this.message)
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}
