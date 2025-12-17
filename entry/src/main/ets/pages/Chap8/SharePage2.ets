import { router } from '@kit.ArkUI';
@Entry
@Component
struct SharePage2 {
  build() {
    Column() {
      Image($r('app.media.startIcon'))
        .width(100)
        .height(100)
        .sharedTransition('myImage', { duration: 400 })
        .onClick(() => {
          router.pushUrl({ url: 'pages/Chap8/SharePage1' });
        })
    }
    .width('100%')
    .height('100%')
  }
}
