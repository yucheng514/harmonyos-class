import animator from '@ohos.animator';
@Entry
@Component
struct AnimatorPage {
  @State rotateAngle: number = 0;
  @State isPlay: boolean = false;
  CDAnimator = animator.create({
    duration: 10 * 1000,
    easing: 'linear',
    delay: 0,
    fill: 'forwards',
    direction: 'normal',
    iterations: -1,
    begin: 0,
    end: 360
  });
  aboutToAppear(): void {
    this.CDAnimator.onFrame = value => {
      this.rotateAngle = value;
    };
  }
  build() {
    Row() {
      Column({ space: 20 }) {
        Image($r('app.media.startIcon'))
          .width(200)
          .aspectRatio(1)
          .borderRadius(100)
          .rotate({ angle: this.rotateAngle })
        Button('播放/暂停')
          .onClick(() => {
            this.isPlay = !this.isPlay;
            this.isPlay ? this.CDAnimator.play() : this.CDAnimator.pause();
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
