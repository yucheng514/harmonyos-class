interface ConfigItem {
  id: number;
  name: string;
}
@Entry
@Component
struct NavigationExample {
  @State TooTmp: ToolbarItem[] = [
    { value: '首页', icon: 'resources/base/media/ic_public_home.svg', action: () => {} },
    { value: '分类', icon: 'resources/base/media/ic_public_app.svg', action: () => {} },
    { value: '收藏', icon: 'resources/base/media/ic_public_collect.svg', action: () => {} }
  ];
  pageInfos: NavPathStack = new NavPathStack();
  arr: ConfigItem[] = [
    { id: 1, name: '网络设置' },
    { id: 2, name: '桌面设置' },
    { id: 3, name: '应用设置' }
  ];
  @Builder
  PageMap(name: string) {
    if (name === 'NavDestinationTitle1') {
      pageOneTmp()
    } else if (name === 'NavDestinationTitle2') {
      pageTwoTmp()
    } else if (name === 'NavDestinationTitle3') {
      pageThreeTmp()
    }
  }
  build() {
    Column() {
      Navigation(this.pageInfos) {
        TextInput({ placeholder: '搜索' })
          .width('90%')
          .height(40)
          .backgroundColor('#FFFFFF')
        List({ space: 12 }) {
          ForEach(this.arr, (item: ConfigItem) => {
            ListItem() {
              Text(item.name)
                .width('100%')
                .height(72)
                .borderRadius(24)
                .fontSize(16)
                .fontWeight(500)
                .textAlign(TextAlign.Center)
                .backgroundColor('#FFFFFF')
                .onClick(() => {
                  this.pageInfos.pushPath({ name: 'NavDestinationTitle' + item.id });
                })
            }
          }, (item: ConfigItem) => item.id.toString())
        }
        .width('90%')
        .height('100%')
        .margin({ top: 12 })
      }
      .title('设置中心')
      .navDestination(this.PageMap)
      .menus([
        { value: '首页', icon: 'resources/base/media/ic_public_home.svg', action: () => {} },
        { value: '设置', icon: 'resources/base/media/ic_public_settings.svg', action: () => {} },
        { value: '分类', icon: 'resources/base/media/ic_public_app.svg', action: () => {} },
        { value: '收藏', icon: 'resources/base/media/ic_public_collect.svg', action: () => {} },
        { value: '我的', icon: 'resources/base/media/ic_public_contacts.svg', action: () => {} }
      ])
      .toolbarConfiguration(this.TooTmp)
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#F1F3F5')
  }
}

@Component
struct pageOneTmp {
  build() {
    NavDestination() {
      Column() {
        Text('NavDestinationContent1')
      }
      .width('100%')
      .height('100%')
    }
    .title('NavDestinationTitle1')
  }
}

@Component
struct pageTwoTmp {
  build() {
    NavDestination() {
      Column() {
        Text('NavDestinationContent2')
      }
      .width('100%')
      .height('100%')
    }
    .title('NavDestinationTitle2')
  }
}

@Component
struct pageThreeTmp {
  build() {
    NavDestination() {
      Column() {
        Text('NavDestinationContent3')
      }
      .width('100%')
      .height('100%')
    }
    .title('NavDestinationTitle3')
  }
}
