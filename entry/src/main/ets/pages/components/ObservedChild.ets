import { GoodsComment } from '../models/GoodsComment';
@Component
export default struct ObservedChild {
  @ObjectLink item: GoodsComment;
  build() {
    Column() {
      Row() {
        Text(this.item.author)
        Text(this.item.date)
      }
      .width('100%')
      .height(50)
      .justifyContent(FlexAlign.SpaceBetween)
      Row() {
        Text(this.item.content)
      }
      Row() {
        Image($r('app.media.ic_public_thumbsup'))
          .width(20)
        Text(this.item.like_count.toString())
          .textAlign(TextAlign.End)
          .fontColor(Color.Red)
      }
      .onClick(() => {
        this.item.like_count++;
      })
      .width('100%')
      .justifyContent(FlexAlign.End)
    }
  }
}
