@Entry
@Component
struct ImageAnimatorPage {
  @State state: AnimationStatus = AnimationStatus.Initial;
  build() {
    Row() {
      Column() {
        ImageAnimator()
          .images([
            { src: $r('app.media.mjyp_refresh_control_1') },
            { src: $r('app.media.mjyp_refresh_control_2') },
            { src: $r('app.media.mjyp_refresh_control_3') },
            { src: $r('app.media.mjyp_refresh_control_4') },
            { src: $r('app.media.mjyp_refresh_control_5') },
            { src: $r('app.media.mjyp_refresh_control_6') },
            { src: $r('app.media.mjyp_refresh_control_7') },
            { src: $r('app.media.mjyp_refresh_control_8') },
            { src: $r('app.media.mjyp_refresh_control_9') },
            { src: $r('app.media.mjyp_refresh_control_10') },
            { src: $r('app.media.mjyp_refresh_control_11') },
            { src: $r('app.media.mjyp_refresh_control_12') }
          ])
          .duration(500)
          .state(this.state)
          .fillMode(FillMode.None)
          .iterations(-1)
          .width(200)
          .height(200)
        Button('购物车')
          .onClick(() => {
            if (this.state == AnimationStatus.Running) {
              this.state = AnimationStatus.Paused;
              return;
            }
            this.state = AnimationStatus.Running;
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
