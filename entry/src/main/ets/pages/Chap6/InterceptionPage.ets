@Entry
@Component
struct InterceptionPage {
  pathStack: NavPathStack = new NavPathStack();
  registerInterceptors() {
    this.pathStack.setInterception({
      willShow: (from, to) => {
        if (typeof to == 'string') {
          return;
        }
        if (typeof from == 'string') {
          to.pathStack.pop();						// 拦截当前跳转
          to.pathStack.pushPathByName('b', null);	// 重新跳转到另一个子页
        }
      }
    })
  }
  @Builder
  subPage(name: string) {
    NavDestination() {
      Text(`这是子页${name}`)
    }
  }
  build() {
    Navigation(this.pathStack) {
      Text('这是首页')
      Button('跳转子页')
        .onClick(() => {
          this.pathStack.pushPathByName('a', null);
        })
    }
    .onAppear(() => {
      this.registerInterceptors();
    })
    .navDestination(this.subPage)
    .height('100%')
    .width('100%')
  }
}
