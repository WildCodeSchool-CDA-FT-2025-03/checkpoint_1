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

  filter(callback: (el: string) => boolean): string[] {
    const filteredArray: string[] = [];
    for (let i = 0; i < this.value.length; i++) {
      if (callback(this.value[i])) {
        filteredArray.push(this.value[i]);
      }
    }
    return filteredArray;
  }
}

export default ArrayRevisited;
