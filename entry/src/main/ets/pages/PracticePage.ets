interface msg
    {name: string, message: string, time: string}


@Entry
@Component
struct MessageWall {
    @State name: string = ''
    @State message: string = ''
    @State messageList: Array<msg> = []

    build() {
        Column({ space: 20 }) {
            // 输入区域
            Text('留言卡片墙').fontSize(24).fontWeight(FontWeight.Bold)

            Row({ space: 10 }) {
                Text('昵称：')
                TextInput({ placeholder: '请输入昵称' })
                    .width('70%')
                    .onChange((value: string) => this.name = value)
            }

            Row({ space: 10 }) {
                Text('留言：')
                TextInput({ placeholder: '请输入留言内容' })
                    .width('70%')
                    .onChange((value: string) => this.message = value)
            }

            Button('发布留言')
                .width('60%')
                .backgroundColor('#4A90E2')
                .fontColor('#fff')
                .onClick(() => {
                    if (this.name.trim() && this.message.trim()) {
                        const now = new Date()
                        const time = `${now.getFullYear()}-${now.getMonth()+1}-${now.getDate()} ${now.getHours()}:${now.getMinutes()}`
                        this.messageList.unshift({
                            name: this.name,
                            message: this.message,
                            time: time
                        })
                        this.name = ''
                        this.message = ''
                    }
                })

            // 留言展示区
            if (this.messageList.length === 0) {
                Text('还没有留言，快来发布第一条吧~')
                    .fontColor('#888')
                    .fontSize(16)
            } else {
                // 使用 Column 展示所有留言
                Column({ space: 10 }) {
                    ForEach(this.messageList, (item:msg) => {
                        Row() {
                            Image($r('app.media.ShadowPuppets'))
                                .width(50).height(50).borderRadius(25)
                                .margin({ right: 10 })
                            Column({ space: 5 }) {
                                Text(item.name).fontWeight(FontWeight.Bold)
                                Text(item.message).fontSize(16)
                                Text(item.time).fontSize(12).fontColor('#999')
                            }
                        }
                        .padding(10)
                        .backgroundColor('#f2f2f2')
                        .borderRadius(10)
                    })
                }
            }
        }
        .padding(20)
        .alignItems(HorizontalAlign.Center)
        .width('100%')
        .height('100%')
        .backgroundColor('#ffffff')
    }
}
