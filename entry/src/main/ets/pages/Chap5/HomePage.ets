import HomeHeader from '../../views/HomeHeader';
import HomeMain from '../../views/HomeMain';
import HomeFooter from '../../views/HomeFooter';
@Entry
@Component
struct HomePage {
  build() {
    Column() {
      HomeHeader()
      HomeMain()
        // .layoutWeight(1)
        .flexGrow(1)
        .backgroundColor('#ccc')
      HomeFooter()
    }
    .height('100%')
  }
}
