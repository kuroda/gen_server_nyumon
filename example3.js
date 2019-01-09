class K {
  constructor() {
    this.value = 0
  }

  increment() {
    this.value = this.value + 1
  }

  count() {
    return this.value
  }
}

k = new K()
k.increment()
k.increment()
k.increment()
console.log(k.count())
