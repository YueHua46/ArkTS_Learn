import { TitleComponent as TC } from "./TitleComponent"

// Entry装饰器作用是将自定义组件用作页面的默认入口组件，加载页面时，将首先创建并呈现@Entry装饰的自定义组件
// 一个页面有且仅有一个Entry
@Entry
// 通过Component装饰器可以定义该结构体为自定义组件，struct结构体为自定义组件的结构
@Component
struct RankPage {
  @State message: string = 'Hello World'
  @State TAG:string = "RankPage"

  build() {
    Column() {
      TC()
      Text(this.message).fontSize(30).fontColor(Color.White)
    }.width("100%").height("100%").backgroundColor(Color.Blue)
  }

  // 生命周期
  // 1.即将出现（在这里可以申请定时器资源等监听事件）
  aboutToAppear() {
    console.log("${TAG} aboutToAppear");
  }
  // 2.onPageShow（页面首次显示）
  onPageShow() {}
  // 3.onBackPress（其他页面返回到该页面）
  onBackPress() {
    return false;
  }
  // 4.onPageHide（页面消失）
  onPageHide() {}
  // 5.即将卸载（在这里释放不需要得资源，避免资源泄露）
  aboutToDisappear() {
    console.log("${TAG} aboutToDisappear");
  }
}