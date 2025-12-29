// 文件A: TitleBar.ets
@Component
// 1. 导出该组件供外部使用
export default  struct TitleBar {
    title: string = '';
    // 2. 定义自定义构建函数
    @Builder customBuilder(){}
    // 3. 定义插槽slot，用于接收外部 UI
    @BuilderParam rightContent: () => void = this.customBuilder;

    build() {
        Row() {
            Text(this.title)
            // 4. 渲染插槽内容
            if (this.rightContent) {
                this.rightContent()
            }
        }
        .width('100%')
    }
}

