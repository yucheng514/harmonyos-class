import { router } from '@kit.ArkUI';
interface Student {
  name: string;
}
@Entry
@Component
struct FirstPage {
  build() {
    Column(){
      Text('第一页')
      Button('跳转下一页')
        .margin({ top: 50 })
        .onClick(() => {
          router.pushUrl(
            {
              url: 'pages/Chap6/SecondPage',
              params: { id: 1 }
            }, err => {
            if (err) {
              console.log(`路由失败，errcode: ${err.code} errMsg: ${err.message}`);
            }
          }
          )
        })
      Button('获取参数')
        .margin({ top: 50 })
        .onClick(() => {
          const params = router.getParams() as Student;
          console.log(`${params.name}`)
          if (params) {
            AlertDialog.show({
              message: `${params.name}`
            })
          }
        })
    }
    .width('100%')
    .height('100%')
  }
}
