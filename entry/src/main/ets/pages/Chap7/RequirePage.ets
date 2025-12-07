import RequireChild from '../../components/RequireChild';
@Entry
@Component
struct RequirePage {
  @State num: number = 1;
  build() {
    Column() {
      RequireChild({ num: this.num })
      // RequireChild()
    }
  }
}
