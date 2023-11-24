@Entry
@Component
struct Index {
  @State message: string = 'Hello World HarmonyOS'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Red)
      }
      .width('100%')
    }
    .height('100%')
  }
}