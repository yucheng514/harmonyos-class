@Component
struct ChildComponent1 {
  @Builder
  customBuilder(label: string) {
    Text(`${label}中的默认内容`)
  }
  @BuilderParam content: (label: string) => void = this.customBuilder;
  build() {
    Column() {
      this.content('子组件');
    }
  }
}
@Entry
@Component
struct BuilderParam1 {
  @Builder
  getContent(label: string) {
    Text(`${label}定制的内容`)
  }
  build() {
    Column() {
      ChildComponent1({
        content: () => {
          this.getContent('父组件');
        }
      })
    }
  }
}
