import { router } from '@kit.ArkUI';

@Entry({ routeName: 'detailPage2' })
@Component
export struct DetailPage {
  @State stackLen: number = 0;
  @State currentPageInfo: string = '';
  aboutToAppear() {
    // 打印一下通过 pushNamedRoute 传过来的参数
    const params = router.getParams?.() ;
    console.info('Detail page params: ' + JSON.stringify(params));
  }

  // 这里演示 hideAlertBeforeBackPage 的典型用法：
  // 想自己处理系统返回键并手动调用 router.back() 时，
  // 为避免弹两次确认对话框，先调用 hideAlertBeforeBackPage 关闭询问框。
  onBackPress(): boolean {
    // 6. hideAlertBeforeBackPage：禁用页面返回询问对话框
    router.hideAlertBeforeBackPage();   // 只在本次返回生效

    // 自己决定什么时候返回
    router.back();
    return true; // 表示已经处理了返回事件
  }

  build() {
    Column({ space: 16 }) {
      Text('详情页 Detail')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)

      Text('在这里按系统返回键，会走 onBackPress，自定义返回逻辑。')
        .fontSize(14)
        .fontColor('#888888')

      Button('手动返回（同样走 hideAlertBeforeBackPage + back）')
        .onClick(() => {
          router.hideAlertBeforeBackPage();
          router.back();
        })

      // 3 & 4. getLength + getState：查看页面栈信息
      Button('刷新页面栈信息（getLength + getState）')
        .onClick(() => {
          // 获取页面栈数量
          const len = router.getLength();      // number
          this.stackLen = Number(len)

          // 获取当前页面状态信息
          const state = router.getState();     // RouterState
          // RouterState 大概包含：index / name / path / params 等
          this.currentPageInfo =
            `index=${state.index}, name=${state.name}, path=${state.path}`;
        })

      Text(`当前页面栈长度：${this.stackLen}`)
        .fontSize(16)

      Text(`当前页面状态：${this.currentPageInfo}`)
        .fontSize(14)

      // 5. clear：清空历史页面栈
      Button('clear 清空历史页面栈，只保留当前页')
        .onClick(() => {
          router.clear();
          // 再刷新一次看看效果
          const len = router.getLength();
          this.stackLen = Number(len)
          const state = router.getState();
          this.currentPageInfo =
            `index=${state.index}, name=${state.name}, path=${state.path}`;
        })
    }
    .padding(20)
    }
}