import RequireChild from '../../components/RequireChild';
@Entry
@Component
struct RequirePage {
  @State num: number = 0;
  build() {
    Column() {
      RequireChild({ num: this.num })
      // RequireChild()
    }
  }
}
