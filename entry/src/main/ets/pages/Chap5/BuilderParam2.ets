@Component
struct ChildComponent2 {
  @Builder
  customBuilder() {}
  @BuilderParam
  content: () => void = this.customBuilder;
  build() {
    Column() {
      this.content();
    }
  }
}
@Entry
@Component
struct BuilderParam2 {
  build() {
    Column() {
      ChildComponent2() {
        Text('父组件定制的内容')
      }
    }
  }
}
