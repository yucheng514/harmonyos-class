@Entry
@Component
struct SliderPage {
  build() {
    Row(){
      Column(){
        Slider({
          min: 50,
          max: 200,
          value: 80,
          step: 10,
          style: SliderStyle.InSet
        }).showSteps(true)
          .showTips(true)
          .trackThickness(10)
      }.width('100%')
    }.height('100%')
  }
}
