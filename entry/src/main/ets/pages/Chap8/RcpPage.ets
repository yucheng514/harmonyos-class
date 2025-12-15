import { rcp } from '@kit.RemoteCommunicationKit';
interface StudentType {
  name: string;
  age: number;
}
@Entry
@Component
struct RcpPage {
  @State student: StudentType = { name: '', age: 0 };
  async aboutToAppear() {
    const session = rcp.createSession();
    const baseUrl = 'http://172.28.80.18:3000';
    try {
      const res = await session.get(`${baseUrl}/student`);
      this.student = res.toJSON() as StudentType;


      // const res = await session.get(`${baseUrl}/student?field=name`);
      // console.log('', res.toJSON() + '');	// 输出结果：小明

      // const student: StudentType = { name: '小明', age: 18 };
      // const res = await session.post(`${baseUrl}/student`, student);
      // console.log('', res.toString());
      // // 输出结果：{"message":"Data saved successfully"}

    } catch (e) {
      console.log('请求失败：', JSON.stringify(e));
    }
    session.close();
  }
  build() {
    Column() {
      Text('123')
      Text('姓名：' + this.student.name)
      Text('年龄：' + this.student.age)
    }
    .width('100%')
  }
}
