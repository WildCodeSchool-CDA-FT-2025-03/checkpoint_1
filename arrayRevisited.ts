class ArrayRevisited {
  value: string[] = [];
  length: number = 0;

  push(el: string): number {
    const array = new Array(this.value.length + 1);

    for (let i = 0; i < this.value.length; i++) {
      array[i] = this.value[i];
    }
    array[this.value.length] = el;
    this.value = array;
    this.length++;
    return this.length;
  }

  filter(callback: (el: string, index: number) => boolean): string[] {
    const array = new Array(this.value.length);
    let j = 0;

    for (let i = 0; i < this.value.length; i++) {
      if (callback(this.value[i], i)) {
        array[j] = this.value[i];
        j++;
      }
    }
    return array;
  }
}

export default ArrayRevisited;
