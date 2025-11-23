export interface WorkRecord {
  position: string,
  workDate: string,
  companyName: string,
  salary: number
}
@Entry
@Component
struct Index {
  @State list: WorkRecord[] = [{
    position: '.NET开发工程师',
    workDate: '2012-6—2012-11',
    companyName: '某文化公司',
    salary: 6000
  }, {
    position: '.NET/Java/前端开发工程师',
    workDate: '2012-11—2017-1',
    companyName: '某餐饮公司',
    salary: 7000
  }, {
    position: '前端开发工程师',
    workDate: '2017-3—2018-2',
    companyName: '某电商公司',
    salary: 8000
  }, {
    position: '高级架构师',
    workDate: '2018-2—2019-3',
    companyName: '某科技公司',
    salary: 9000
  }, {
    position: '讲师',
    workDate: '2019-3—至今',
    companyName: '某教育公司',
    salary: 10000
  }]
  build() {
    List({ space: 20 }) {
      ForEach(this.list, (item: WorkRecord) => {
        ListItem() {
          Column() {
            Row() {
              Text('职位')
              Text(item.position)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
            Row() {
              Text('工作年度')
              Text(item.workDate)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
            Row() {
              Text('公司名称')
              Text(item.companyName)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
            Row() {
              Text('薪资')
              Text(item.salary + '元')
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
        }
      })
    }
    .width('100%')
    .height('100%')
    .divider({ color: '#999', strokeWidth: 3 })
    .padding(20)
  }
}