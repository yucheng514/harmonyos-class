import CounterModel from '../models/ObservedModel'

@Component
export default struct ObservedChild1 {
    @ObjectLink model: CounterModel;
    // @Prop

    build() {
        Column() {
            Text(`Child Count: ${this.model.count}`).fontSize(20)

            Button("子组件 +1")
                .onClick(() => { this.model.count++ })
        }
        .padding(10)
    }
}