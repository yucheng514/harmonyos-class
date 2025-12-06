import { router, promptAction } from '@kit.ArkUI';
@Entry
@Component
struct LifePage2 {
  onBackPress(): boolean | void {
    promptAction.showDialog({
      message: '确认要返回吗？',
      buttons: [
        { text: '取消', color: '#F00' },
        { text: '确认', color: '#09F' }
      ]
    }).then(result => {
      if (result.index == 1) {
        router.back();
      }
    });
    return true;
  }
  build() {
    Row() {
      Column() {
        Text('第二页')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}
