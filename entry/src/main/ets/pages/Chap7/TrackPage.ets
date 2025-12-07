import { Goods } from '../../models/Goods';
@Entry
@Component
struct TrackPage {
  @State goods: Goods = new Goods({
    name: '连衣裙',
    price: 99
  });
  build() {
    Column() {
      Text('商品名称：' + this.goods.name)
      // Text('商品价格：' + this.goods.price)
    }
  }
}
