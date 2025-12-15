import axios, { AxiosResponse } from '@ohos/axios';
interface StudentType {
  name: string;
  age: number;
}
@Entry
@Component
struct AxiosPage {
  @State student: StudentType = { name: '', age: 0 };
  async aboutToAppear() {
    const baseUrl = 'http://172.28.80.18:3000';
    try {
      const res = await axios.get<StudentType, AxiosResponse<StudentType, null>>(`${baseUrl}/student`);
      this.student = res.data;

      // const res = await axios.get<string, AxiosResponse<string, null>>(`${baseUrl}/student?field=name`);
      // console.log('', res.data);		 	// 输出结果：小明

      // const student: StudentType = { name: '小明1', age: 19 };
      // const res = await axios.post<object, AxiosResponse<object, StudentType>>(`${baseUrl}/student`, student);
      // console.log('', JSON.stringify(res.data));

    } catch (e) {
      console.log('请求失败：', JSON.stringify(e));
    }
  }
  build() {
    Column() {
      Text('姓名：' + this.student.name)
      Text('年龄：' + this.student.age)
    }
    .width('100%')
  }
}
