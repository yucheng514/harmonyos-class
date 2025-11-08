// xxx.ets
import { webview } from '@kit.ArkWeb';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct WebComponent {
  controller: webview.WebviewController = new webview.WebviewController();

  build() {
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
      Web({ src: $rawfile("flexbox.html"), controller: this.controller })
    }
  }
}