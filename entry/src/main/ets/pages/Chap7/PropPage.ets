import PropChild from '../components/PropChild';
@Entry
@Component
struct PropPage {
  @State parentNum: number = 0;
  build() {
    Row() {
      Column({ space: 10 }) {
        Row({ space: 10 }) {
          Text('父组件：' + this.parentNum)
          Button('加1')
            .onClick(() => {
              this.parentNum++;
            })
        }
        PropChild({ num: this.parentNum })
      }
      .width('100%')
    }
    .height('100%')
  }
}
