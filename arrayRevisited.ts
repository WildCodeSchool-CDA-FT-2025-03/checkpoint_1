class ArrayRevisited {
  value: string[] = [];
  length: number = 0;

  pushTest(el: string): number {
    const array = new Array(this.value.length + 1);

    for (let i = 0; i < this.value.length; i++) {
      array[i] = this.value[i];
    }

    array[this.value.length] = el;
    this.value = array;
    this.length++;
    return this.length;
  }

  filter(callback: (el: string, index: number, array: string[]) => boolean): string[] {
    const result: string[] = [];

    for (let i = 0; i < this.value.length; i++) {
      const element = this.value[i];
    
      if (callback(element, i, this.value)) {
        result.push(element);
      }
    }

    return result;    
  }
}

export default ArrayRevisited;
