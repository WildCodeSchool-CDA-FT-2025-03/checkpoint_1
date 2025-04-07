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

  filter(callbackFn: (value: string, index: number, array: string[]) => boolean): ArrayRevisited {
    const result = new ArrayRevisited();
    
    for (let i = 0; i < this.length; i++) {
      if (callbackFn(this.value[i], i, this.value)) {
        result.push(this.value[i]);
      }
    }
    
    return result;
  }

}

export default ArrayRevisited;
