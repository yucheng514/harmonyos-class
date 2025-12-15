import { http } from '@kit.NetworkKit';
interface StudentType {
  name: string;
  age: number;
}
@Entry
@Component
struct RequestPage {
  @State student: StudentType = { name: '', age: 0 };
  async aboutToAppear() {
    const httpRequest = http.createHttp();
    const baseUrl = 'http://172.28.80.18:3000';
    try {
      const res = await httpRequest.request(`${baseUrl}/student`, {
        expectDataType: http.HttpDataType.OBJECT
      });
      this.student = res.result as StudentType;

      // const res = await httpRequest.request(`${baseUrl}/student`, {
      //   extraData: { field: 'name' },
      //   expectDataType: http.HttpDataType.OBJECT
      // });
      // console.log(res.result as string);		// 输出结果：小明

      // const student: StudentType = { name: '小明', age: 18 };
      // const res = await httpRequest.request(`${baseUrl}/student`, {
      //   method: http.RequestMethod.POST,
      //   header: { 'Content-Type': 'application/json' },
      //   extraData: student
      // });
      // console.log('', res.result);

    } catch (e) {
      console.log('请求失败：', JSON.stringify(e));
    }
    httpRequest.destroy();
  }
  build() {
    Column() {
      Text('姓名：' + this.student.name)
      Text('年龄：' + this.student.age)
    }
    .width('100%')
  }
}
