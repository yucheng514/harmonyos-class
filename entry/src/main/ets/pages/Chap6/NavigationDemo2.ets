@Entry
@Component
struct NavigationDemo2 {
  build() {
    Navigation()
      .title('主页')
      .titleMode(NavigationTitleMode.Mini)
      .mode(NavigationMode.Stack)
      .toolbarConfiguration([
        { value: '首页', icon: 'resources/base/media/ic_public_home.svg', action: () => {} },
        { value: '设置', icon: 'resources/base/media/ic_public_settings.svg', action: () => {} },
        { value: '分类', icon: 'resources/base/media/ic_public_app.svg', action: () => {} },
        { value: '收藏', icon: 'resources/base/media/ic_public_collect.svg', action: () => {} },
        { value: '我的', icon: 'resources/base/media/ic_public_contacts.svg', action: () => {} }
      ])
  }
}