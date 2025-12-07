@Component
export default struct RequireChild {
  @Require @Prop num: number = 0;
  build() {
    Text(this.num.toString())
  }
}
