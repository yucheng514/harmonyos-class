interface GoodsItem {
  id: number;
  goods_name: string;
  goods_img: Resource;
  goods_price: number;
  goods_count: number;
}
let list: GoodsItem[] = [{
  id: 1,
  goods_name: 'Vue.js前端开发实战（第2版）',
  goods_img: $r('app.media.vue'),
  goods_price: 49.8,
  goods_count: 1,
}, {
  id: 2,
  goods_name: '软件测试（第2版）',
  goods_img: $r('app.media.test'),
  goods_price: 49.8,
  goods_count: 1,
}, {
  id: 3,
  goods_name: 'PHP+MySQL动态网站开发',
  goods_img:  $r('app.media.mysql'),
  goods_price: 49.8,
  goods_count: 1,
}, {
  id: 4,
  goods_name: 'Python数据预处理',
  goods_img: $r('app.media.python'),
  goods_price: 39.8,
  goods_count: 1,
}];
@Entry
@Component
struct ForEachPage {
  @State list: GoodsItem[] = list
  build() {
    List() {
      ForEach(this.list, (item: GoodsItem) => {
        ListItem() {
          Row({ space: 10 }) {
            Image(item.goods_img)
              .borderRadius(8)
              .width(120)
              .height(200)
            Column() {
              Text(item.goods_name)
                .fontWeight(FontWeight.Bold)
              Text('￥' + item.goods_price.toString() )
                .fontColor(Color.Red)
                .fontWeight(FontWeight.Bold)
            }
            .padding({ top: 5, bottom: 5 })
            .alignItems(HorizontalAlign.Start)
            .justifyContent(FlexAlign.SpaceAround)
            .height(200)
            .layoutWeight(1)
          }
          .width('100%')
        }
      })
    }
    .width('100%')
    .height('100%')
    .divider({ color: '#E7E9E8', strokeWidth: 1 })
    .padding(10)
  }
}
