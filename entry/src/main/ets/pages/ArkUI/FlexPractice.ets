@Entry
@Component
struct FlexCard {
  build() {
    Column(){
      Text('Flex 布局')
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
      .margin({ top: 10, left:10, bottom:40 })
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

      Text('Grid 布局')
      Grid() {
        GridItem(){
          Image($r('app.media.avatar'))
            .width(60)
            .height(60)
            .borderRadius(30)
            .margin({ right: 16 })
        }
        .columnStart(0)
        .columnEnd(0)
        .rowStart(0)
        .rowEnd(2)

        GridItem(){
          Text('姓名：张三')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .width('100%')
        }.columnStart(1)
        .rowStart(0)

        GridItem(){
          Text('学号：123123123')
            .fontSize(14)
            .fontColor('#666')
            .margin({ top: 6 })
            .width('100%')
        }.columnStart(1)
        .rowStart(1)

        GridItem(){
          Text('简介：前端开发学习者')
            .fontSize(14)
            .fontColor('#666')
            .margin({ top: 6 })
            .width('100%')
        }.columnStart(1)
        .rowStart(2)
      }
      .columnsTemplate('230px 1fr') // 第一列头像宽度固定，第二列自适应
      // .columnsTemplate(`${vp2px(60)} 1fr`) // 第一列头像宽度固定，第二列自适应
      .rowsTemplate('1fr 1fr 1fr') // 三行分别放姓名、学号、简介
      .width('85%')
      .height(100)
      .padding(16)
      .margin({ top: 10, left: 10 })
      .backgroundColor('#F8F8F8')
      .borderRadius(16)
      .shadow({ radius: 30, color: '#D0D0D0' })
    }
    .height('100%')


  }
}