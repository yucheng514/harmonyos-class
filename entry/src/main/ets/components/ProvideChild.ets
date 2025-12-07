@Component
export default struct ProvideChild {
  @Consume num: number;
  build() {
    Row({ space: 20 }) {
      Text('子组件：' + this.num)
      Button('加1')
        .onClick(() => {
          this.num++;
        })
    }
  }
}
