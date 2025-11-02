@Entry
@Component
struct StackButtonExample {
  scroller: Scroller = new Scroller()

  build() {
    Stack({alignContent:Alignment.BottomEnd}) {
      // 主体内容（滚动区域）
      Scroll(this.scroller) {
        Column() {
          ForEach(new Array(50).fill(0), (item:number,index) => {
            Text(`第 ${++index} 行内容`)
              .fontSize(20)
              .padding(10)
              .backgroundColor(index % 2 === 0 ? '#f8f9fa' : '#fff6f6f6')
              .width('100%')
          })
        }
      }

      // 浮动按钮，叠在右下角
      Button('↑')
        .width(60)
        .height(60)
        .fontSize(30)
        .backgroundColor('#007bff')
        .fontColor(Color.White)
        .borderRadius(30)
        .margin(20)
        .onClick(() => {
          this.scroller.scrollTo({ xOffset: 0, yOffset: 0 })
        })
    }
    .width('100%')
    .height('100%')
  }
}
// @Entry
@Component
struct StackExample {
  build() {
    Stack({alignContent:Alignment.BottomStart}) {
      // 背景图
      Image($r('app.media.background'))
        .width('100%')
        .height(200)
        .objectFit(ImageFit.Cover)

      // 覆盖在图片上的文字
      Text('电影推荐')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.White)
        .padding(20)
    }
    .width('100%')
    .height(200)
    .backgroundColor('#000') // 图片没加载时有背景
  }
}