interface Info { title: string, detail: string }
function getPageInfo(name: string): Info {
    console.log(name+'22')
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
struct NavigationPage3_Sub {
    pathStack: NavPathStack = new NavPathStack();
    name: string = '';
    @State value: string = '';
    build() {
        NavDestination() {
            Column({ space: 16 }) {
                Text(getPageInfo(this.value).title)
                    .fontSize(26)
                    .fontWeight(FontWeight.Bold)
                Text(getPageInfo(this.value).detail)
                    .fontSize(16)
            }
            .padding(24)
        }
        .title(getPageInfo(this.value).title)
        .onReady((ctx: NavDestinationContext) => {
            this.pathStack = ctx.pathStack;
        })
    }
}

@Builder
export function NavSubBuilder1(name: string, param: string){
    NavigationPage3_Sub({name: name,value: param})
}