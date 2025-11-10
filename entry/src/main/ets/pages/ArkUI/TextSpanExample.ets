@Entry
@Component
struct SpanExample {
    build() {
        Column() {
            Text() {

                Span($r('app.string.module_desc')).fontSize(25)
                ImageSpan($r('app.media.smile'))
                    .width('200px')
                    .height('200px')
                    .objectFit(ImageFit.Fill)
                    .verticalAlign(ImageSpanAlignment.CENTER)

            }
            .width('100%')
        }.width('100%').height('100%')
        .justifyContent(FlexAlign.Center)
    }
}