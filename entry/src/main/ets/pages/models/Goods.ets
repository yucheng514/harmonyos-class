interface GoodsType {
  name: string;			// 商品名称
  price: number;		// 商品价格
}
export class Goods implements GoodsType {
  @Track name: string = '';
  price: number = 0;
  constructor(model: GoodsType) {
    this.name = model.name;
    this.price = model.price;
  }
}
