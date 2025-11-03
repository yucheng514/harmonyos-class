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
    build() {
        List({ space: 20 }) { // space: 每个列表项之间的间距
            // 第一组：A类联系人
            ListItemGroup({ header: builder('A类联系人')  ,footer: builder('添加')}) {
                ListItem() {
                    Text('Alice')
                        .fontSize(20)
                        .padding(12)
                }
                ListItem() {
                    Text('Aaron')
                        .fontSize(20)
                        .padding(12)
                }
            }

            // 第二组：B类联系人
            ListItemGroup({ header: builder('B类联系人') ,footer: builder('添加')}) {
                ListItem() {
                    Text('Ben')
                        .fontSize(20)
                        .padding(12)
                }
                ListItem() {
                    Text('Bella')
                        .fontSize(20)
                        .padding(12)
                }
            }

            // 第三组：C类联系人
            ListItemGroup({ header: builder('C类联系人') ,footer: builder('添加') }) {
                ListItem() {
                    Text('Chris')
                        .fontSize(20)
                        .padding(12)
                }
                ListItem() {
                    Text('Cindy')
                        .fontSize(20)
                        .padding(12)
                }
            }
        }
        .listDirection(Axis.Vertical)
        .divider({ color: '#ddd', strokeWidth: 1 }) // 每项之间的分割线
        .scrollBar(BarState.On) // 显示滚动条
    }


}