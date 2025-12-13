import { router } from '@kit.ArkUI';
@Entry
@Component
struct SharePage1 {
  build() {
    Column() {
      Image($r('app.media.startIcon'))
        .width(50)
        .height(50)
        .sharedTransition('myImage', { duration: 400 })
        .onClick(() => {
          router.pushUrl({ url: 'pages/Chap8/SharePage2' });
        })
    }
    .width('100%')
    .height('100%')
  }
}
