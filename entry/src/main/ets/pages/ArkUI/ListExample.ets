interface GroupItem {
    letter: string
    names: string[]
}
// 构建组标题
@Builder
function  builder(title: string) {
     Row() {
        Text(title)
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .padding(10)
    }
    .backgroundColor('#f1f3f5')
}

@Entry
@Component
struct ListGroupExample {
    scroller: Scroller = new Scroller()
    groupData: GroupItem[]  = [
        { letter: 'A', names: ['Alice', 'Aaron'] },
        { letter: 'B', names: ['Ben', 'Bella'] },
        { letter: 'C', names: ['Chris', 'Cindy'] },
        { letter: 'D', names: ['David', 'Diana'] },
        { letter: 'E', names: ['Evan', 'Ella'] },
        { letter: 'F', names: ['Frank', 'Fiona'] },
        { letter: 'G', names: ['George', 'Grace'] }
    ]
    build() {
        List({ space: 30, initialIndex: 1, scroller: this.scroller}) {
            ForEach(this.groupData,(item:GroupItem, index)=>{
                ListItemGroup({ header: builder(`${item.letter}类`), footer: builder('添加') }) {
                    ForEach(item.names, (name:string) =>{
                        ListItem() {
                            Text('' + name)
                                .fontSize(20)
                                .padding(12)
                        }.backgroundColor('#ffd679c6').width('100%')
                    })
                }
            })

        }
        .listDirection(Axis.Vertical)
        .divider({ color: '#ddd', strokeWidth: 1 }) // 每项之间的分割线
        .scrollBar(BarState.On) // 显示滚动条
        .gesture(
            TapGesture({ count: 2 })
                .onAction(() => {
                    this.scroller.scrollEdge(Edge.Top)
                })
        )
    }


}