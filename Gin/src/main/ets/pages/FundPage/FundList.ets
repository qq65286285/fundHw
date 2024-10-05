import { ValueType } from '@kit.ArkData';
import { http } from '@kit.NetworkKit';
import { Header } from '../../model/http/Header';
import Fetch from '@system.fetch';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct FundList {
  @State message: string = '基金列表';



  build() {
    RelativeContainer() {
      Button(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }.onClick(()=>{


      let httpRequest = http.createHttp();
      httpRequest.request("http://121.37.147.35/gateway/prod/fundInfo/list", {
        method: http.RequestMethod.POST,
        connectTimeout: 60000,
        readTimeout: 60000,
        header: {
        'Content-Type': 'application/json',
        'Authorization':'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE3MjI4NjMxNzIsImlhdCI6MTcyMjg1MjM3MiwiaW5mbyI6IntcImlkXCI6XCIxMDY5NjQzMjM3NjY4MjYxXCIsXCJ1bmlvbklkXCI6XCJnSENpUG9zYUNFRklpRVwiLFwidXNlcm5hbWVcIjpcIumZiOWPtueak1wiLFwiZnVsbE5hbWVcIjpcIumZiOWPtueak1wiLFwibmlja05hbWVcIjpcIumZiOWPtueak1wifSJ9.gkfpAiWMNJR5JLFUu9O29l_8AEcEQyDXY4wyZkJjpb4'
        },
        extraData:{
          "page":1,
          "pageSize":10
        }
      }
      ,(err: BusinessError, data: http.HttpResponse) =>{
          if (!err) {
            // data.result为HTTP响应内容，可根据业务需要进行解析
            console.log('Result:' + JSON.stringify(data.result));
            console.log('code:' + JSON.stringify(data.responseCode));
            // data.header为HTTP响应头，可根据业务需要进行解析
            console.log('header:' + JSON.stringify(data.header));
            console.log('cookies:' + JSON.stringify(data.cookies)); // 8+
            // 当该请求使用完毕时，调用destroy方法主动销毁
            // httpRequest.destroy();
          } else {
            console.log('error:' + JSON.stringify(err));
            // 取消订阅HTTP响应头事件
            httpRequest.off('headersReceive');
            // 当该请求使用完毕时，调用destroy方法主动销毁
            // httpRequest.destroy();
          }
        }
      )

      // httpRequest.destroy()
    })


    .height('100%')
    .width('100%')
  }

}




