

@Entry
@Component
struct NavigationPage3 {
    pathStack: NavPathStack = new NavPathStack();
    @Builder
    menuItem(text: string, name: string) {
        Row() {
            Text(text)
                .fontSize(18)
                .fontColor(Color.White)
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
        }
        .height(50)
        .margin({ left: 16, right: 16, top: 8, bottom: 8 })
        .borderRadius(12)
        .backgroundColor(Color.Orange)
        .shadow({ radius: 6, color: Color.Gray, offsetX: 0, offsetY: 3 })
        .onClick(() => {
            this.pathStack.pushPathByName('NaviPage', name);
        })
    }


    build() {
        Navigation(this.pathStack) {
            Scroll(){
                Column() {
                    Text('选择要学的菜谱类型')
                        .fontSize(22)
                        .fontWeight(FontWeight.Bold)
                        .padding(16)
                    this.menuItem('米饭类', 'rice')
                    this.menuItem('面食类', 'noodle')
                    this.menuItem('汤类', 'soup')
                    this.menuItem('小甜品', 'dessert')
                }
                .backgroundColor('#F5F5F5')
            }
        }
        .title('菜谱导航')
        .titleMode(NavigationTitleMode.Mini)
        .mode(NavigationMode.Auto)
    }
}