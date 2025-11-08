// xxx.ets
import { webview } from '@kit.ArkWeb';
import { BusinessError } from '@kit.BasicServicesKit';


import { Markdown } from '@luvi/lv-markdown-in'

@Entry
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