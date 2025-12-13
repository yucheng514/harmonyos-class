import { promptAction } from '@kit.ArkUI';
@Component
export default struct WatchChild {
  @Link num: number;
  @Watch('updateMessage') @Prop message: string;
  updateMessage() {
    promptAction.showToast({ message: '父组件变化了' });
  }
  build() {
    Row() {
      Column() {
        Text('子组件' + this.num)
        Button('加1')
          .onClick(() => {
            this.num++;
          })
      }
    }
  }
}
