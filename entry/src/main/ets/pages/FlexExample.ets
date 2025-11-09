


import { webview } from '@kit.ArkWeb';
import { BusinessError } from '@kit.BasicServicesKit';


import { Markdown } from '@luvi/lv-markdown-in'
@Entry
@Component
struct FlexExample{
  build() {
    Flex({
      direction: FlexDirection.Row,
      wrap: FlexWrap.NoWrap,
      justifyContent: FlexAlign.Center,
      alignItems: ItemAlign.Center,
      // alignContent: FlexAlign.Center
    }){
      Column().backgroundColor(Color.Red).width(30).height(30)
        .alignSelf(ItemAlign.Start)
      Column().backgroundColor(Color.Pink).width(30).height(30)
      Column().backgroundColor(Color.Yellow).width(30).height(30)
      Column().backgroundColor(Color.Green).width(30).height(30)
        .alignSelf(ItemAlign.End)
      Column().backgroundColor(Color.Orange).width(30).height(30)

      // Column().backgroundColor(Color.Red).width(50).height(30)
      // Column().backgroundColor(Color.Pink).width(50).height(30)
      // Column().backgroundColor(Color.Yellow).width(50).height(30)
      // Column().backgroundColor(Color.Green).width(50).height(30)
      // Column().backgroundColor(Color.Orange).width(50).height(30)
      // Column().backgroundColor(Color.Red).width(50).height(30)
      // Column().backgroundColor(Color.Pink).width(50).height(30)
      // Column().backgroundColor(Color.Yellow).width(50).height(30)
      // Column().backgroundColor(Color.Green).width(50).height(30)
      // Column().backgroundColor(Color.Orange).width(50).height(30)

      // 对齐的是“文字底部”的基准线，而不是整个组件的高度底边。
      // Text('大字').fontSize(30).backgroundColor('#FFDCDC')
      // Text('小字').fontSize(14).backgroundColor('#DCFFDC')
      // Text('Baseline').fontSize(20).backgroundColor('#DCDFFF')

      // 使用 Flex 容器或父容器的默认对齐方式，一般等价于 Start 或 Stretch
      // Text('Auto 默认行为').fontSize(18).backgroundColor('#FFDCDC')
      // Button('按钮').backgroundColor('#DCDFFF')

    }.backgroundColor(Color.Gray)
    .width('100%')
    // .height('100%')
    .height(500)
  }
}

// @Entry
@Component
struct WebComponent {
  // controller: webview.WebviewController = new webview.WebviewController();

  build() {
    Scroll(){
      Column() {
        // Button('loadUrl')
        //   .onClick(() => {
        //     try {
        //       // 点击按钮时，通过loadUrl，跳转到local1.html
        //       this.controller.loadUrl($rawfile("flexbox.html"));
        //     } catch (error) {
        //       console.error(`ErrorCode: ${(error as BusinessError).code},  Message: ${(error as BusinessError).message}`);
        //     }
        //   })
        // // 组件创建时，通过$rawfile加载本地文件local.html
        // Web({ src: $rawfile("flexbox.html"), controller: this.controller })
        // Markdown({ text: "想让文字像在原生世界里呼吸，就得从**渲染**开始" })
        Markdown({
          mode: "rawfile",
          context: getContext(),      // 资源文件模式必填参数
          rawfilePath: "css-flex.md",   // 资源文件地址
          callback: {                 // callback 可省略
            complete: () => {
              console.log("Markdown component load success.")
            },
            fail: (code: number, message: string) => {
              console.error("Markdown component load error. code: " + code + ", message: " + message)
            }
          }
        })
      }
    }

  }
}