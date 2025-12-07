import ProvideChild from './ProvideChild';
@Component
export default struct ProvideParent {
  @Consume num: number;
  build() {
    Column({ space: 20 }) {
      Row({ space: 20 }) {
        Text('父组件：' + this.num)
        Button('加1')
          .onClick(() => {
            this.num++;
          })
      }
      ProvideChild()
    }
  }
}
