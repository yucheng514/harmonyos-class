interface Info { title: string, detail: string }
function getPageInfo(name: string): Info {
    switch (name) {
        case 'rice':
            return { title: '米饭类菜谱', detail: '例子：蛋炒饭、咖喱饭、番茄牛腩饭……' }
        case 'noodle':
            return { title: '面食类菜谱', detail: '例子：番茄鸡蛋面、炸酱面、热干面……' }
        case 'soup':
            return { title: '汤类菜谱', detail: '例子：紫菜蛋花汤、排骨汤、番茄蔬菜汤……' }
        case 'dessert':
            return { title: '小甜品菜谱', detail: '例子：布丁、奶冻、凉粉、水果酸奶杯……' }
        default:
            return { title: '未找到页面', detail: '请返回首页重新选择菜谱类型。' }
    }
}

@Entry
@Component
struct RecipeNavigationPage {
    pathStack: NavPathStack = new NavPathStack();
    // 菜单UI结构
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
            this.pathStack.pushPathByName(name, null);
            // this.pathStack.pushPath({name:name});
        })
    }

    // 子页UI结构
    @Builder
    getPageContent(name: string) {
        NavDestination() {
            Column({ space: 16 }) {
                Text(getPageInfo(name).title)
                    .fontSize(26)
                    .fontWeight(FontWeight.Bold)
                Text(getPageInfo(name).detail)
                    .fontSize(16)
            }
            .padding(24)
        }
        .title(getPageInfo(name).title)
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
        .navDestination(this.getPageContent)
    }
}