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
  @Builder
  parentContent2() {
    Text('父组件定制的内容')
  }
  build() {
    Column() {
      ChildComponent2() {
        this.parentContent2()
      }
      // ChildComponent2({
      //   content: () => {
      //     this.parentContent2()
      //   }
      // })
    }
  }
}
