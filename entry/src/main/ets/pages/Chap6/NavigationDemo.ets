@Entry
@Component
struct NavigationDemo {
  build() {
    Navigation()
    .title('主页')
    .titleMode(NavigationTitleMode.Mini)
    .mode(NavigationMode.Stack)
    .menus([
      { value: '搜索', icon: $r('app.media.ic_public_search'), action: () => {} },
      { value: '添加', icon: $r('app.media.ic_public_add'), action: () => {}} ,
      { value: '编辑', icon: $r('app.media.ic_public_edit'), action: () => {} },
      { value: '减少', icon: $r('app.media.ic_public_remove'), action: () => {} }
    ])
      // .hideNavBar(true)
      // .hideBackButton(true)
  }
}