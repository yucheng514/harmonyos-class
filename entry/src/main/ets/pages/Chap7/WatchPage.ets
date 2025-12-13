import WatchChild from '../../components/WatchChild';
import { promptAction } from '@kit.ArkUI';
@Entry
@Component
struct WatchPage {
  @Watch('updateNum') @State num: number = 0;
  @Watch('updateMessage') @State message: string = 'Hello World';
  updateNum() {
    promptAction.showToast({ message: '子组件变化了' });
  }
  updateMessage(name: string) {
    console.log('发生变化了：', name, this.message);
  }
  build() {
    Row() {
      Column({ space: 20 }) {
        Text(this.message)
        Text('父组件' + this.num)
        Button('修改变量')
          .onClick(() => {
            this.message = '内容改变了';
          })
        WatchChild({ num: this.num, message: this.message })
      }
      .width('100%')
    }
    .height('100%')
  }
}
