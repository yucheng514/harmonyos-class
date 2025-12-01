@Entry
@Component
struct NavSubPage {
  pathStack: NavPathStack = new NavPathStack();
  build() {
    NavDestination() {
      Text('这里是NavSubPage')
      Button('返回上一页')
        .onClick(() => {
          this.pathStack.pop();
        })
    }
    .onReady(context => {
      this.pathStack = context.pathStack;
    })
  }
}
@Builder
export function NavSubBuilder() {
  NavSubPage()
}
