import CounterModel from '../../models/ObservedModel'
import Child from '../../components/ObservedChild1'
@Entry
@Component
struct Parent {
    @State counter: CounterModel = new CounterModel();

    build() {
        Column() {
            Text(`Parent Count: ${this.counter.count}`).fontSize(22)
            Button("父组件 +1")
                .onClick(() => { this.counter.count++ })

            Child({ model: this.counter })
        }
        .padding(20)
    }
}