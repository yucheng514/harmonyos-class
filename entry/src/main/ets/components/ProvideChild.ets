@Component
export default struct ProvideChild {
  @Consume num: number;
  build() {
    Row({ space: 20 }) {
      Text('Child组件：' + this.num)
      Button('加1')
        .onClick(() => {
          this.num++;
        })
    }
  }
}
