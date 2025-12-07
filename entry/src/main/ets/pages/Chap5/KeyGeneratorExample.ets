import { User1 } from '../../models/User'
@Entry
@Component
struct KeyGeneratorExample {
  @State users: User1[] = [
    { id: 1, name: "Alice" },
    { id: 2, name: "Bob" },
    { id: 3, name: "Cindy" },
    { id: 4, name: "danny"}
  ];
  build() {
    Column(){
      Button("反转列表").onClick(() => {
        this.users.reverse();
      });

      ForEach(
        this.users,
        (item:User1) => {
          Row() {
            Text(item.name)
            TextInput({ placeholder: "输入备注" })
          }
        },
        // 比较前后 keyGenerator 的区别
        (item: User1, index: number) => index + '__' + JSON.stringify(item)
        // (item: User1) => item.id.toString()

      );
    }
  }
}