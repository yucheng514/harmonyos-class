@Entry
@Component
struct TextInputTypeExample {
    @State normalText: string = ''
    @State passwordText: string = ''
    @State emailText: string = ''
    @State numberText: string = ''
    @State phoneText: string = ''

    build() {
        Scroll() {
            Column({ space: 15 }) {
                // 普通文本输入
                Text('普通文本输入（type: Text）')
                    .fontWeight(FontWeight.Bold)
                TextInput({
                    placeholder: '请输入文本',
                    text: this.normalText
                })
                    .type(InputType.Normal)
                    .onChange(value => this.normalText = value)
                    .border({ width: 1 })

                // 密码输入
                Text('密码输入（type: Password）')
                    .fontWeight(FontWeight.Bold)
                TextInput({
                    placeholder: '请输入密码',
                    text: this.passwordText
                })
                    .type(InputType.Password)
                    .onChange(value => this.passwordText = value)
                    .border({ width: 1 })

                // 邮箱输入
                Text('邮箱输入（type: Email）')
                    .fontWeight(FontWeight.Bold)
                TextInput({
                    placeholder: '请输入邮箱地址',
                    text: this.emailText
                })
                    .type(InputType.Email)
                    .onChange(value => this.emailText = value)
                    .border({ width: 1 })

                // 数字输入
                Text('数字输入（type: Number）')
                    .fontWeight(FontWeight.Bold)
                TextInput({
                    placeholder: '请输入数字',
                    text: this.numberText
                })
                    .type(InputType.Number)
                    .onChange(value => this.numberText = value)
                    .border({ width: 1 })

                // 电话输入
                Text('电话输入（type: PhoneNumber）')
                    .fontWeight(FontWeight.Bold)
                TextInput({
                    placeholder: '请输入电话号码',
                    text: this.phoneText
                })
                    .type(InputType.PhoneNumber)
                    .onChange(value => this.phoneText = value)
                    .border({ width: 1 })


                // 当前输入展示
                Divider()
                Text(`当前输入信息：`)
                Text(`普通文本: ${this.normalText}`)
                Text(`密码: ${this.passwordText}`)
                Text(`邮箱: ${this.emailText}`)
                Text(`数字: ${this.numberText}`)
                Text(`电话: ${this.phoneText}`)
            }
            .width('90%')
            .margin({ left:10 })
            .alignItems(HorizontalAlign.Start)
        }
    }
}
