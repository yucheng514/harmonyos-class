@Entry
@Component
struct SliderPage {
  @State value:number = 80
  build() {
    Row(){
      Column(){
        Text(`当前数值：${this.value}`)
        Slider({
          min: 50,
          max: 200,
          // value: $$this.value,
          value: this.value,
          step: 10,
          style: SliderStyle.InSet,
        }).showSteps(true)
          .showTips(true)
          .trackThickness(10)
          .onChange(value => {
            this.value = value
          })
      }.width('100%')
    }.height('100%')
  }
}
