@Entry
@Component
struct CounterApp {
    // @State count: number = 0;
    private step: number = 2;
    @Watch('onCountChange') @State count: number = 0;
    onCountChange() {
        if (this.count >= 5) {
            console.log('newVal >= 5');
        }
    }
    build() {
        Column() {
            Text(`当前计数: ${this.count}`)
                .fontSize(24)
                .onClick(() => {
                    this.count += this.step;
                })

            Button("重置")
                .onClick(() => {
                    this.count = 1;
                    this.step = 3;
                })
        }
    }
}