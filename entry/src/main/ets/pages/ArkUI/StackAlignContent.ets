// xxx.ets
@Entry
@Component
struct StackAlignContent {
    build() {
        Stack({ alignContent: Alignment.Center }) {
            Text('1').width('90%').height('100%')
                .backgroundColor(Color.Red).align(Alignment.Top)
            Text('2').width('80%').height('90%')
                .backgroundColor(Color.Yellow).align(Alignment.Top)
            Text('3').width('70%').height('80%')
                .backgroundColor(Color.Green).align(Alignment.Top)
            Text('4').width('60%').height('70%')
                .backgroundColor(Color.Blue).align(Alignment.Top)
            Text('5').width('50%').height('60%')
                .backgroundColor(Color.Orange).align(Alignment.Top)
        }.width('100%').height('90%').margin({ top: 5 })
    }
}