@Component
export default struct LinkChild {
  @Link num: number;
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
