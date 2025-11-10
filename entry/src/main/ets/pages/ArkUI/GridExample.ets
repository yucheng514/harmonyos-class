@Entry
@Component
struct GridExample {

  build() {
    Grid(){
      GridItem().backgroundColor(Color.Blue)
        .rowStart(0).rowEnd(0).columnStart(0).columnEnd(4)
      GridItem().backgroundColor(Color.Yellow)
        .rowStart(1).rowEnd(3).columnStart(0).columnEnd(0)
      GridItem().backgroundColor(Color.Red)
        .rowStart(1).rowEnd(3).columnStart(1).columnEnd(3)
      GridItem().backgroundColor(Color.Green)
        .rowStart(1).rowEnd(3).columnStart(4).columnEnd(4)
      GridItem().backgroundColor(Color.Black)
        .rowStart(4).rowEnd(4).columnStart(1).columnEnd(3)
    }.columnsTemplate('1fr 1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
    .width(350).height(350).backgroundColor(Color.Gray)
    .rowsGap(10).columnsGap(10)
  }
}