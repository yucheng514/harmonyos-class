@Entry
@Component
struct TextInputPage {
  @State msg:string = ''
  fn(value: string){
    this.msg = value
  }
  build() {
    Row() {
      Column({space:20}) {
        // TextInput({ placeholder: '请输入账号或手机号' ,text:$$this.msg})
        TextInput({ placeholder: '请输入账号或手机号' })
          .width(300)
          .placeholderColor(Color.Gray)
          .placeholderFont({ size: 14 })
          .caretColor(Color.Red)
          // .onChange(value => {
          //   this.msg = value
          // })
          // .onChange(this.fn)
          .onChange(this.fn.bind(this))
        Text('输入内容为：')
        Text(this.msg)
      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)
    }
    .height('100%').padding(20)
  }
}
