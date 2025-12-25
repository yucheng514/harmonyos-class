import { BusinessError } from '@ohos.base'
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
    // httpRequest.request(`${baseUrl}/student`,{
    //   expectDataType: http.HttpDataType.OBJECT
    // }).then(res => {
    //   this.student = res.result as StudentType;
    // }).catch((error: BusinessError)  => {
    //   console.log(JSON.stringify(error))
    // }).finally(() => {
    //   httpRequest.destroy();
    // })
    try {
      const res = await httpRequest.request(`${baseUrl}/student`, {
        expectDataType: http.HttpDataType.OBJECT
      });
      this.student = res.result as StudentType;


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
