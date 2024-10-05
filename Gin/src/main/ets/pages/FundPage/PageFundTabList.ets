import { TabBars } from '../View/TabBars';

@Entry
@Component
struct PageFundTabList {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Navigation(){
        Column(){
          TabBars()
        }
      }
      .width('100%')
      .height('100%')
      .title('基金管理')
      .titleMode(NavigationTitleMode.Mini)
    }
    .height('100%')
    .width('100%')

  }

}