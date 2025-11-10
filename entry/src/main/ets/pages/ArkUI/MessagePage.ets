@Entry
@Component
struct MessagePage {
  @State isMarry: boolean = false;
  @State searchText: string = '';
  build() {
    Row() {
      Grid() {
        GridItem() {
          Column({ space: 5 }) {
            Text('Checkbox')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Checkbox()
              .select($$this.isMarry)
            Button('改值')
              .onClick(() => {
                this.isMarry = !this.isMarry;
              })
          }
        }
        .height(200)
        .border({ width: 1, color: Color.Black })
        GridItem() {
          Column({ space: 5 }) {
            Text('TextInput')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            TextInput({ text: $$this.searchText })
              .fontSize(14)
            Text(this.searchText + '')
              .fontSize(14)
            Button('改值')
              .onClick(() => {
                this.searchText = '请输入账号或手机号';
              })
          }
        }
        .height(200)
        .border({ width: 1, color: Color.Black })
      }
      .width('100%')
      .height('100%')
      .columnsTemplate('1fr 1fr')
      .columnsGap(20)
    }
  }
}

// @Entry
@Preview
@Component
struct MessageComponent {
  @State message: string = 'Hello ArkUI'
  build() {
    Column() {
      TextInput({
        placeholder: '请输入内容' ,
        text: $$this.message
      })
      Text(this.message)
    }
  }
}

