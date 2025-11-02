@Entry
@Component
struct ScrollWithScrollerExample {
  scroller: Scroller = new Scroller()
  items: number[] =new Array(50).fill(1)

  build() {
    Column() {
      // 按钮控制滚动
      Button("回到顶部")
        .onClick(() => {
          this.scroller.scrollTo({ xOffset: 0, yOffset: 0 })
        })
        .margin({ top: 10 })

      // Scroll绑定scroller
      Scroll(this.scroller) {
        Column() {
          ForEach(this.items, (item:number,index: number) => {
            Text(`这是第 ${index + 1} 行内容`)
              .fontSize(20)
              .padding(10)
              .backgroundColor(index % 2 === 0 ? '#f1f3f5' : '#ffffff')
              .width('90%')
          })
        }
      }
      .scrollBar(BarState.On) // 显示滚动条
      .height('80%') // 给滚动区域限定高度
    }
    .width('100%')
    .height('100%')
  }
}
