@Entry
@Component
struct NavigationDemo {
  build() {
    Navigation()
    .title('主页')
    .titleMode(NavigationTitleMode.Full)
    .mode(NavigationMode.Stack)
    .menus([
      { value: '搜索', icon: $r('app.media.ic_public_search'), action: () => {} },
      { value: '添加', icon: 'resources/base/media/ic_public_add.svg', action: () => {}} ,
      { value: '编辑', icon: 'resources/base/media/ic_public_edit.svg', action: () => {} },
      { value: '减少', icon: 'resources/base/media/ic_public_remove.svg', action: () => {} }
    ])
  }
}