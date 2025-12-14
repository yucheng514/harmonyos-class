@Entry
@Component
struct AppStoragePage {
  @StorageProp('name') name: string = '';
  @StorageLink('age') age: number = 0;
  @StorageProp('name') name1: string = '';
  @StorageProp('age') age1: number = 0;
  build() {
    Column({ space: 20 }) {
      Row({ space: 20 }) {
        Text('姓名：' + this.name)
        Button('加1')
          .onClick(() => {
            // this.name = this.name + 1;
            AppStorage.set('name', this.name + 1);
          })
      }
      Row({ space: 20 }) {
        Text('年龄：' + AppStorage.get('age'))
        // Text('年龄：' + this.age)
        Button('加1')
          .onClick(() => {
            this.age++;
            console.log(AppStorage.get('age'))
          })
      }
      Row({ space: 20 }) {
        Text('姓名：' + this.name1 + '    年龄：' + this.age1)
      }
    }
    .width('100%')
  }
}
