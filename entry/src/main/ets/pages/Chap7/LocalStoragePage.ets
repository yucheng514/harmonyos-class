import User from '../../storages/User';
@Entry(User)
@Component
struct LocalStoragePage {
  @LocalStorageProp('name') name: string = '';
  @LocalStorageLink('age') age: number = 0;
  @LocalStorageProp('name') name1: string = '';
  @LocalStorageProp('age') age1: number = 0;
  build() {
    Column({ space: 20 }) {
      Row({ space: 20 }) {
        Text('姓名：' + this.name)
        Button('加1')
          .onClick(() => {
            this.name = this.name + 1;
          })
      }
      Row({ space: 20 }) {
        Text('年龄：' + this.age)
        Button('加1')
          .onClick(() => {
            this.age++;
          })
      }
      Row({ space: 20 }) {
        Text('姓名：' + this.name1 + '    年龄：' + this.age1)
      }
    }
    .width('100%')
  }
}
