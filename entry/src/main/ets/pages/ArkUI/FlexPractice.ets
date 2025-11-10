@Entry
@Component
struct FlexCard {
  build() {
    Flex({
      direction: FlexDirection.Row,
      justifyContent: FlexAlign.Start,
      alignItems: ItemAlign.Center
    }) {
      // Image($r('app.media.avatar'))
      Image('https://developer.huawei.com/consumer/cn/personalcenter/assets/images/banner/default-img.svg')
        .width(60)
        .height(60)
        .borderRadius(30)
        .margin({ right: 16 })
      Flex({
        direction: FlexDirection.Column,
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Start
      }) {
        Text('姓名：张三')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
        Text('学号：123123123')
          .fontSize(14)
          .fontColor('#666')
          .margin({ top: 6 })
        Text('简介：前端开发学习者')
          .fontSize(14)
          .fontColor('#666')
          .margin({ top: 6 })
      }
    }
    .width('85%')
    .height(100)
    .padding(16)
    .margin({ top: 50, left:10 })
    .backgroundColor('#F8F8F8')
    .borderRadius(16)
    .shadow({ radius: 30, color: '#D0D0D0' })
    .stateStyles({
      normal: {
        .backgroundColor('#F8F8F8')
      },
      pressed: {
        .backgroundColor('#ccc')
      }
    })
  }
}