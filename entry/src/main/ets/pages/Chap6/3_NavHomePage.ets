@Entry
@Component
struct NavHomePage {
  pathStack: NavPathStack = new NavPathStack();
  build() {
    Navigation(this.pathStack)
    {
      Text('这里是HomePage')
      Button('去SubPage')
        .onClick(() => {
          this.pathStack.pushPathByName('sub', null);
        })
    }.title('主页')
    .titleMode(NavigationTitleMode.Mini)
    .mode(NavigationMode.Stack)
    .menus([
      { value: '搜索', icon: $r('app.media.ic_public_search'), action: () => {} },
      { value: '添加', icon: $r('app.media.ic_public_add'), action: () => {}} ,
      { value: '编辑', icon: $r('app.media.ic_public_edit'), action: () => {} },
      { value: '减少', icon: $r('app.media.ic_public_remove'), action: () => {} }
    ])
    .toolbarConfiguration([
      { value: '首页', icon: $r('app.media.ic_public_home'), action: () => {} },
      { value: '收藏', icon: $r('app.media.ic_public_collect'), action: () => {} },
      { value: '我的', icon: $r('app.media.ic_public_contacts'), action: () => {} }
    ])
  }
}
