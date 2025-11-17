export default class A {
  name: string = "A"
}

export class B {
  name: string = "B"
}

class C {
  name: string = "C"
}

// 统一导出（把具名导出集中导出）
export { C };