@Entry
@Component
struct ListPage {
  scroller: Scroller = new Scroller()
  build() {
    Row() {
      Column() {
        Text('页面标题')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{
            this.scroller.scrollEdge(Edge.Top)
          })
        List({ space: 20, initialIndex: 7, scroller: this.scroller}) {
          ForEach(new Array(20).fill(1), (item:number, index) => {
            ListItem(){
              Text('' + ++index)
              // Text(`${index + 1}`)
                .width('100%')
                .height(100)
                .backgroundColor(Color.Gray)
                .textAlign(TextAlign.Center)
                .borderRadius(10)
            }
          })
        }
        .divider({
          strokeWidth: 2,
          color: 'red',
          startMargin: 20,
          endMargin: 20
        })
        .edgeEffect(EdgeEffect.Fade)
        .width('100%')
        .height('100%')
      }
      .width('100%')
      .padding(10)
    }
    .height('100%')
  }
}
