import { router } from '@kit.ArkUI';
import('entry/ets/pages/Chap6/2_DetailPage');

@Entry
@Component
struct IndexPage {
  @State stackLen: number = 0;
  @State currentPageInfo: string = '';

  build() {
    Column({ space: 16 }) {
      Text('首页 Index')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)

      // 1. pushNamedRoute：跳转到指定命名路由页面
      Button('pushNamedRoute 到 Detail（入栈）')
        .onClick(() => {
          router.pushNamedRoute({
            name: 'detailPage2',                         // 目标命名路由
            params: { from: 'Index', time: Date.now() } // 随便带点参数
          },err => {
            if (err) {
              console.log(`路由失败，errcode: ${err.code} errMsg: ${err.message}`);
            }
          })
        })

      // 2. replaceNamedRoute：用 detailPage 替换当前页
      Button('replaceNamedRoute 为 Detail（替换当前页）')
        .onClick(() => {
          router.replaceNamedRoute({
            name: 'detailPage2',
            params: { from: 'Index (replace)', time: Date.now() }
          }).then(() => {
            console.info('replaceNamedRoute finish');
          })
          //   .catch(err => {
          //   console.error('replaceNamedRoute failed: ' + JSON.stringify(err));
          // });
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
