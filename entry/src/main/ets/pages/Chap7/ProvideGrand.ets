import ProvideParent from '../components/ProvideParent';
@Entry
@Component
struct ProvideGrand {
  @Provide num: number = 0;
  build() {
    Column({ space: 20 }) {
      Row({ space: 10 }) {
        Text('爷爷组件：' + this.num)
        Button('加1')
          .onClick(() => {
            this.num++;
          })
      }
      ProvideParent()
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}
