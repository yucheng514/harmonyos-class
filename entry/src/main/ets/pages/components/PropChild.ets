@Component
export default struct PropChild {
  @Prop num: number = 0;
  build() {
    Column() {
      Row({ space: 10 }) {
        Text('子组件：' + this.num)
        Button('加1')
          .onClick(() => {
            this.num++;
          })
      }
    }
  }
}
