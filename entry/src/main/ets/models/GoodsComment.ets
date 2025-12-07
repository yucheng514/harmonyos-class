interface GoodsCommentType {
  content: string;			// 评论内容
  like_count: number;		// 点赞数
  author: string;			  // 作者
  date: string;				  // 日期
}
@Observed
export class GoodsComment implements GoodsCommentType {
  content: string = '';
  like_count: number = 0;
  author: string = '';
  date: string = '';
  constructor(model: GoodsCommentType) {
    this.content = model.content;
    this.like_count = model.like_count;
    this.author = model.author;
    this.date = model.date;
  }
}
