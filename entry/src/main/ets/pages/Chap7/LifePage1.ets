import { router } from '@kit.ArkUI';
@Entry
@Component
struct LifePage1 {
  aboutToAppear() {
    console.log('页面初始化');
  }
  onPageShow() {
    console.log('页面显示');
  }
  onPageHide() {
    console.log('页面隐藏');
  }
  aboutToDisappear() {
    console.log('页面销毁');
  }
  build() {
    Row() {
      Column() {
        Text('第一页')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('跳转下一页')
          .onClick(() => {
            router.pushUrl({ url: 'pages/Chap7/LifePage2' });
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
