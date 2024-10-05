import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = '基金管理';

  build() {
    Column() {
      Row(){
        Image($rawfile('icon/基金管理.svg')).width(50).height(50).margin({right:10})
        Text(this.message)
          .fontSize(50)
          // .fontWeight(FontWeight.Bold)
          // .width('70%')
          .height(48)
          .textAlign(TextAlign.Center)
      }.alignRules({
        center: { anchor: '__container__', align: VerticalAlign.Top },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      })



      Text("")
        .fontSize(20)
        // .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Top },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .width('100%')
        .height(48)
        .textAlign(TextAlign.Center)

      Column(){
        Row(){
          Image($rawfile('icon/私募基金.svg')).width(30).height(30)
          Text("基金").padding({left:15})
            .backgroundColor('F5F5F5')
        }.width('100%')
        Row(){
          Text("基金管理").padding({left:5,top:10})
        }.width('100%')
      }
      .margin({top:15})
      .borderColor('#f0f0f0')
      .borderWidth(1)
      .height('15%')
      .width('80%')
      .onClick(()=>{
        console.log("点击")
        router.pushUrl({url:"pages/FundPage/FundList"})
      })

      Column(){
        Row(){
          Image($rawfile('icon/项目.svg')).width(30).height(30)
          Text("项目").padding({left:15})
            .backgroundColor('F5F5F5')
        }.width('100%')
        Row(){
          Text("项目管理").padding({left:5,top:10})
        }.width('100%')
      }
      .margin({top:15})
      .borderColor('#f0f0f0')
      .borderWidth(1)
      // .height('100%')
      .width('80%')
      .height('15%')

      Column(){
        Row(){
          Image($rawfile('icon/已投递.svg')).width(30).height(30)
          Text("已投").padding({left:15})
            .backgroundColor('F5F5F5')
        }.width('100%')
        Row(){
          Text("已投项目").padding({left:5,top:10})
        }.width('100%')
      }
      .margin({top:15})
      .borderColor('#f0f0f0')
      .borderWidth(1)
      // .height('100%')
      .width('80%').height('15%')

      Column(){
        Row(){
          Image($rawfile('icon/投资人00.svg')).width(30).height(30)
          Text("投资人").padding({left:15})
            .backgroundColor('F5F5F5')
        }.width('100%')
        Row(){
          Text("基金管理").padding({left:5,top:10})
        }.width('100%')
      }
      .margin({top:15})
      .borderColor('#f0f0f0')
      .borderWidth(1)
      // .height('100%')
      .width('80%').height('15%')



    }

    .width('100%')
    .height('100%')
    .backgroundColor("#F5F5F5")
  }
}