@Entry
@Component
struct TagCloud {
    tags: string[] = ['Html', 'Css', 'JavaScript', 'ArkTS', 'HarmonyOS'];

    build() {
        // 1. 创建 Flex 容器，设置允许换行
        Flex({
            wrap: FlexWrap.Wrap,
            // 2. 设置主轴对齐方式为开头对齐
            justifyContent:FlexAlign.Start
        }) {
            ForEach(this.tags, (item: string) => {
                Text(item)
                    .padding(8)
                    .backgroundColor(Color.Gray)
                    .margin(5)
                    .borderRadius(4)
            })
        }
        .width('100%')
    }
}