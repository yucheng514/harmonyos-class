@Entry
@Component
struct LoginPage1 {
    build() {
        // 1. 创建一个垂直方向布局容器
        Column() {
            // 2. 创建输入框，设置占位符文本
            TextInput({ placeholder: '请输入账号' })
                .width('80%')
                .height(50)
                // 3. 设置输入框类型为普通文本
                .type(InputType.Normal)

            Button('登录')
                .width('80%')
                // 4. 设置按钮点击事件
                .onClick(() => {
                    console.info('Login clicked');
                })
        }
        .width('100%')
        .justifyContent(FlexAlign.Center)
    }
}