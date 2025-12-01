import { router } from '@kit.ArkUI';
import { promptAction } from '@kit.ArkUI';
interface Person {
  id: number;
}
@Entry
@Component
struct SecondPage {
  @State stackLen: number = 0;
  @State currentPageInfo: string = '';
  build() {
    Column({ space: 20 }) {
      Text('第二页')
      Button('获取参数')
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

      Button('返回上一页(showAlertBeforeBackPage)')
        .onClick(() => {
          // router.showAlertBeforeBackPage({
          this.getUIContext().getRouter().showAlertBeforeBackPage({
            message: '确认要放弃付款吗？'
          });
          // router.back();
          this.getUIContext().getRouter().back();
        })

      Button('返回上一页(promptAction.showDialog)')
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


      // 3 & 4. getLength + getState：查看页面栈信息
      Button('刷新页面栈信息（getLength + getState）')
        .onClick(() => {
          // 获取页面栈数量
          const len = router.getLength();      // number
          this.stackLen = Number(len)

          // 获取当前页面状态信息
          const state = router.getState();     // RouterState
          this.currentPageInfo = JSON.stringify(state)
        })

      Text(`当前页面栈长度：${this.stackLen}`)
        .fontSize(16)

      Text(`当前页面状态：${this.currentPageInfo}`)
        .fontSize(14)

      // 5. clear：清空历史页面栈
      Button('clear 清空历史页面栈，只保留当前页')
        .onClick(() => {
          router.clear();
          // 再刷新一次看看效果
          const len = router.getLength();
          this.stackLen = Number(len)
          const state = router.getState();
          this.currentPageInfo = JSON.stringify(state)
        })
    }
    .width('100%')
    .height('100%')

  }
}
