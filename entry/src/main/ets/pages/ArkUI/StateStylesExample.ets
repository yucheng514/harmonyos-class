@Entry
@Component
struct StateStylesDemoPage {
  build() {
    Column({ space: 20 }) {
      NormalPressedDemo()
      DisabledDemo()
      FocusedDemo()
      ClickedDemo()
      SelectedDemo()
    }
    .padding(20)
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}

/** 1. normal + pressed 示例（和书上的几乎一样） */
@Component
struct NormalPressedDemo {
  build() {
    Column({ space: 8 }) {
      Text('normal / pressed 示例')

      Row() {
        Text('按下试试')
      }
      .padding(20)
      .width('100%')
      .height(60)
      .border({ color: '#f3f4f5', width: 3 })
      .borderRadius(4)
      .stateStyles({
        normal: {
          .backgroundColor(Color.White)
        },
        pressed: {
          .backgroundColor('#ccc')
        }
      })
    }
  }
}

/** 2. disabled 示例（可切换） */
@Component
struct DisabledDemo {
  @State isDisabled: boolean = true

  build() {
    Column({ space: 12 }) {
      Text('disabled 示例（点击下面按钮切换启用/禁用）')

      Button(this.isDisabled ? '已禁用按钮' : '可用按钮')
        .width('100%')
        .height(60)
        .enabled(!this.isDisabled) // 根据状态控制是否禁用
        .fontColor(Color.Black)
        .stateStyles({
          normal: {
            .backgroundColor('#ffffff')
            .border({ color: '#cccccc', width: 2 })
          },
          disabled: {
            .backgroundColor('#eeeeee')
            .opacity(0.5)
            .border({ color: '#aaaaaa', width: 2 })
          }
        })

      // 这个按钮用来切换禁用状态
      Button(this.isDisabled ? '启用上面按钮' : '禁用上面按钮')
        .width('100%')
        .height(50)
        .backgroundColor('#4a90e2')
        .fontColor(Color.White)
        .borderRadius(6)
        .onClick(() => {
          this.isDisabled = !this.isDisabled
        })
    }
  }
}

/** 3. focused 示例 */
@Component
struct FocusedDemo {
  @State inputValue: string = ''

  build() {
    Column() {
      Text('focused 示例（使用Tab键走焦）')
      Button('Button1')
        .stateStyles({
          focused: {
            .backgroundColor('#ffffeef0')
          },
          pressed: {
            .backgroundColor('#ff707070')
          },
          normal: {
            .backgroundColor('#ff2787d9')
          }
        })
        .margin(20)
      Button('Button2')
        .stateStyles({
          focused: {
            .backgroundColor('#ffffeef0')
          },
          pressed: {
            .backgroundColor('#ff707070')
          },
          normal: {
            .backgroundColor('#ff2787d9')
          }
        })
    }
  }
}
/** 4. clicked 示例 */
@Component
struct ClickedDemo {
  build() {
    Column({ space: 8 }) {
      Text('clicked 示例（点击会短暂高亮）')

      Button('点击我')
        .width('100%')
        .height(60)
        .fontColor(Color.Black)
        .stateStyles({
          normal: {
            .backgroundColor('#ccc')
          },
          clicked: {
            .backgroundColor('#d2f8d2') // 点击完成瞬间会出现 clicked 状态
          }
        })
        .onClick(() => {
          // 这里只是为了演示，可以打印日志 / 弹 Toast
          console.log('按钮被点击')
        })
    }
  }
}

/** 5. selected 示例（演示写法） */
@Component
struct SelectedDemo {
  @State isChecked: boolean = false

  build() {
    Column({ space: 8 }) {
      Text('selected 示例（用 Checkbox 演示选中状态）')

      Row({ space: 12 }) {
        Checkbox()
          .onChange((value: boolean) => {
            this.isChecked = value
          })
          .select(this.isChecked)
          .stateStyles({
            normal: {
              .backgroundColor('#ffffff')
              .border({ color: '#cccccc', width: 2 })
            },
            selected: {
              .backgroundColor('#a8d08d')   // 选中后的底色
              .border({ color: '#6a9e60', width: 2 })
            }
          })
          .width(50)
          .height(50)
        Text(this.isChecked ? '已选中' : '未选中')
      }
      .padding(12)
      .borderRadius(8)
    }
  }
}
