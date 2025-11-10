@Entry
@Component
struct ScrollPage {
  @State middleHeight: number = 0;
  build() {
    Column() {
      Row() {
        Text('顶部')
          .fontColor(Color.White)
          .textAlign(TextAlign.Center)
          .width('100%')
      }
      .width('100%')
      .height(50)
      .backgroundColor(Color.Green)
      Scroll(){
        Column({space: 30}) {
          ScrollItem()
          ScrollItem()
          ScrollItem()
          ScrollItem()
          ScrollItem()
          ScrollItem()
          ScrollItem()
          ScrollItem()
          ScrollItem()
          ScrollItem()
        }
      }
      .width('100%')
      .height(this.middleHeight)
      .backgroundColor(Color.Gray)
      Row() {
        Text('底部')
          .fontColor(Color.White)
          .textAlign(TextAlign.Center)
          .width('100%')
      }
      .width('100%')
      .height(50)
      .backgroundColor(Color.Blue)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .height('100%')
    .onAreaChange((old: Area, newArea: Area) => {
      // this.middleHeight = (newArea.height as number) - 100;
      this.middleHeight = Number(newArea.height) - 100;
    })
  }
}

@Preview
@Component
struct ScrollItem {
  build() {
    Row() {
      Text('滚动区域内容')
    }
    .width('100%')
    .height(80)
    .backgroundColor(Color.Yellow)
    .borderRadius(8)
    .justifyContent(FlexAlign.Center)
  }
}
