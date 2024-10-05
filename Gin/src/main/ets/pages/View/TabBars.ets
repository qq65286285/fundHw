@Component

export struct TabBars{
  @State tabsIndex :number = 0;
  @State initBarData :string[] =
    ['基金','味精','服饰','手机']

  @Builder
  tabBarBuilder(content:string,index:number){
      Column(){
        Text(content)
          .fontSize(this.tabsIndex == index ? 20 :16)
          .fontColor(this.tabsIndex == index ? '#000':'#666')
      }
  }

  build() {
    Tabs(){
        ForEach(this.initBarData,(item:string,index:number) => {
          TabContent(){
            Column(){
              Text(item).fontSize(80)
            }
            .justifyContent(FlexAlign.Center)
            .width('100%')
            .height('100%')
          }.tabBar(this.tabBarBuilder(item,index !== undefined ? index :0))
        })

    }.onChange((index:number) =>{
        this.tabsIndex = index;
    })
  }
}