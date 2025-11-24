import { router } from '@kit.ArkUI';
import { promptAction } from '@kit.ArkUI';
interface Person {
  id: number;
}
@Entry
@Component
struct SecondPage {
  build() {
    Column({ space: 20 }) {
      Text('第二页')
      Button('获取参数')
        .margin({ top: 50 })
        .onClick(() => {
          // const params = router.getParams() as Person;
          const params = this.getUIContext().getRouter().getParams() as Person;
          if (params) {
            // AlertDialog.show({
            //   message: `1${params.id}`
            // });
            this.getUIContext().showAlertDialog({
              message: `获得参数：${params.id}`
            })
          }
        })
      Button('返回上一页(默认)')
        .margin({ top: 50 })
        .onClick(() => {
          // router.back({
          this.getUIContext().getRouter().back();
        })
      Button('返回上一页(带参数)')
        .onClick(() => {
          // router.back({
          this.getUIContext().getRouter().back({
            url: 'pages/Chap6/1_FirstPage',
            params: { name: '张三' }
          });
        })

      Button('退出1')
        .margin({ top: 50 })
        .onClick(() => {
          // router.showAlertBeforeBackPage({
          this.getUIContext().getRouter().showAlertBeforeBackPage({
            message: '确认要放弃付款吗？'
          });
          // router.back();
          this.getUIContext().getRouter().back();
        })

      Button('退出2')
        .onClick(() => {
          // promptAction.showDialog({
          this.getUIContext().getPromptAction().showDialog({
            message: '确认要放弃付款吗？',
            buttons: [
              { text: '取消', color: '#F00' },
              { text: '确认', color: '#09F' }
            ]
          }).then(result => {
            if (result.index == 0) {
              console.log('用户取消操作');
            } else if (result.index == 1) {
              console.log('用户确认操作');
              // router.back();
              this.getUIContext().getRouter().back();
            }
          })
        })
    }
    .width('100%')
    .height('100%')
  }
}
