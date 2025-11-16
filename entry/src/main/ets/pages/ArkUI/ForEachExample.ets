interface ForEachUser {
  id: number,
  name: string
}

@Entry
@Component
struct ForEachExample {
  @State users: ForEachUser[] = [
    { id: 1, name: "Alice" },
    { id: 2, name: "Bob" },
    { id: 3, name: "Cindy" }
  ];

  build() {
    Column() {
      ForEach(
        this.users,
        (item: ForEachUser, index) => {
          Text(`${index} - ${item.name}`).fontSize(24).width('80%')
        },
        (item: ForEachUser) => item.id.toString()
      )
    }.height('100%').padding(20)
  }
}