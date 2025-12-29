@Component
struct MyComp {
    @State show: boolean = false;

    aboutToAppear() { console.log("1: Comp appear"); }
    aboutToDisappear() { console.log("2: Comp disappear"); }

    build() { Text("Hello") }
}

@Entry
@Component
struct PageLife {
    @State isShow: boolean = true;

    onPageShow() { console.log("3: Page show"); }
    onPageHide() { console.log("4: Page hide"); }
    aboutToAppear() { console.log("5: Page appear"); }

    build() {
        Column() {
            if (this.isShow) {
                MyComp()
            }
            Button("显示/隐藏").onClick(() => this.isShow = !this.isShow)
        }
    }
}
