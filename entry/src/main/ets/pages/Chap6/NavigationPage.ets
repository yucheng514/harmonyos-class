@Entry
@Component
struct NavigationPage {
  pathStack: NavPathStack = new NavPathStack();
  @Styles
  gridStyle() {
    .height(100)
    .width(100)
    .borderRadius(10)
    .margin(10)
    .backgroundColor(Color.Orange)
    .shadow({ radius: 10, color: Color.Gray, offsetX: 0, offsetY: 5 })
  }
  @Builder
  getPageContent(name: string) {
    if (name === 'spring') {
      Spring()
    } else if(name === 'summer') {
      Summer()
    } else if(name === 'autumn') {
      Autumn()
    } else if(name === 'winter') {
      Winter()
    }
  }
  build() {
    Navigation(this.pathStack) {
      GridRow({ columns: 2 }) {
        GridCol() {
          Text('春')
            .fontSize(24)
            .height(100)
            .fontColor(Color.White)
        }
        .gridStyle()
        .onClick(() => {
          this.pathStack.pushPathByName('spring', null)
        })
        GridCol() {
          Text('夏')
            .fontSize(24)
            .height(100)
            .fontColor(Color.White)
        }
        .gridStyle()
        .onClick(() => {
          this.pathStack.pushPathByName('summer', null)
        })
        GridCol() {
          Text('秋')
            .fontSize(24)
            .height(100)
            .fontColor(Color.White)
        }
        .gridStyle()
        .onClick(() => {
          this.pathStack.pushPathByName('autumn', null)
        })
        GridCol() {
          Text('冬')
            .fontSize(24)
            .height(100)
            .fontColor(Color.White)
        }
        .gridStyle()
        .onClick(() => {
          this.pathStack.pushPathByName('winter', null)
        })
      }
    }
    .title('四季')
    .titleMode(NavigationTitleMode.Mini)
    .navDestination(this.getPageContent)
  }
}
@Component
struct Spring {
  build() {
    NavDestination() {
      Text('春季')
    }
    .title('四季之春季')
  }
}
@Component
struct Summer {
  build() {
    NavDestination() {
      Text('夏季')
    }
    .title('四季之夏季')
  }
}
@Component
struct Autumn {
  build() {
    NavDestination() {
      Text('秋季')
    }
    .title('四季之秋季')
  }
}
@Component
struct Winter {
  build() {
    NavDestination() {
      Text('冬季')
    }
    .title('四季之冬季')
  }
}
