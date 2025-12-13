interface User {
  name: string;
  age: number;
}
export default new LocalStorage({ name: '小明', age: 18 } as User)
