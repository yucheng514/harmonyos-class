// export interface WorkRecord {
//   *: string,
//   *: string,
//   *: string,
//   *: number
// }
// @Entry
// @Component
// struct Index {
//   @State list: *[] = [{
//     position: '.NET开发工程师',
//     workDate: '2012-6—2012-11',
//     companyName: '某文化公司',
//     salary: 6000
//   }, {
//     position: '.NET/Java/前端开发工程师',
//     workDate: '2012-11—2017-1',
//     companyName: '某餐饮公司',
//     salary: 7000
//   }, {
//     position: '前端开发工程师',
//     workDate: '2017-3—2018-2',
//     companyName: '某电商公司',
//     salary: 8000
//   }, {
//     position: '高级架构师',
//     workDate: '2018-2—2019-3',
//     companyName: '某科技公司',
//     salary: 10000
//   }, {
//     position: '讲师',
//     workDate: '2019-3—至今',
//     companyName: '某教育公司',
//     salary: 9000
//   }]
//   build() {
//     List({ space: 20 }) {
//       ForEach(*, (*: *) => {
//         *() {
//           Column() {
//             Row() {
//               Text('职位')
//               Text(*)
//             }
//             .width('100%')
//             .justifyContent(FlexAlign.*)
//             Row() {
//               Text('工作年度')
//               Text(*)
//             }
//             .width('100%')
//             .justifyContent(FlexAlign.*)
//             Row() {
//               Text('公司名称')
//               Text(*)
//             }
//             .width('100%')
//             .justifyContent(FlexAlign.*)
//             Row() {
//               Text('薪资')
//               Text(* + '元')
//             }
//             .width('100%')
//             .justifyContent(*)
//           }
//         }
//       })
//     }
//     .width('100%')
//     .height('100%')
//     .divider({ color: '#999', strokeWidth: 3 })
//     .padding(20)
//   }
// }