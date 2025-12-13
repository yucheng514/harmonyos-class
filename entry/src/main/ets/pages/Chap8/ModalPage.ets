@Entry
@Component
struct ModalPage {
  @State showDialog: boolean = false;
  @State timeCount: number = 5;
  timer: number  = -1
  aboutToAppear() {
    this.showDialog = true;
    this.beginCount();
  }
  aboutToDisappear() {
    clearInterval(this.timer)
  }
  @Builder
  getContent() {
    Column() {
      Row() {
        Text(`还剩${this.timeCount}秒，跳过`)
          .fontColor(Color.White)
          .onClick(() => {
            clearInterval(this.timer);
            this.timeCount = 5;
            this.showDialog = false;
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.End)
      .padding(10)
    }
    .backgroundColor(Color.Gray)
    .width('100%')
    .height('100%')
  }
  beginCount() {
    this.timer = setInterval(() => {
      if(this.timeCount == 1) {
        clearInterval(this.timer);
        this.timeCount = 5;
        this.showDialog = false;
        return;
      }
      this.timeCount--;
    }, 1000)
  }
  build() {
    Row() {
      Column() {
        Button('模态显示')
          .onClick(() => {
            this.showDialog = true;
            this.beginCount();
          })
      }
      .width('100%')
    }
    .height('100%')
    .bindContentCover($$this.showDialog,
      this.getContent, { modalTransition: ModalTransition.ALPHA }
    )
  }
}
