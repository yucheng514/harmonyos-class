import { GoodsComment } from '../models/GoodsComment';
import ObservedChild from '../components/ObservedChild';
@Entry
@Component
struct ObservedPage {
  @State commentList: GoodsComment[] = [
    new GoodsComment({
      author: '小白',
      content: '读书使人明智。读书能让我们增长知识，不出门也可知天下事。鲁迅在《故乡》中说：其实地上本没有路，走的人多了，也便成了路。',
      like_count: 70,
      date: '2024-3-16'
    }),
    new GoodsComment({
      author: '小李',
      content: '《边城》以清新脱俗的笔触，展现了湘西边陲的淳朴人情与美好人性，传递出对纯真爱情的向往与赞美。',
      like_count: 180,
      date: '2024-3-16'
    })
  ];
  build() {
    List() {
      ForEach(this.commentList, (item: GoodsComment) => {
        ListItem() {
          ObservedChild({ item: item })
        }
      })
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}
