import TitleBar from './TitleBar'
@Entry
@Component
struct MainPage {
    @State message: string = 'Hello World';

    build() {
        RelativeContainer() {
            TitleBar({ title: '首页' }) {
                Image($r('app.media.search')).width(20) // 这里的内容会传给 rightContent
            }
        }
        .height('100%')
        .width('100%')
    }
}