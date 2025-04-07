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

  filter(cb: (element: string, index: number, array: string[]) => boolean): string[] {
    const result: string[] = [];
    for (let i = 0; i < this.value.length; i++) {
      if (cb(this.value[i], i, this.value)) {
        result.push(this.value[i]);
      }
    }
    console.log(result)
    return result;
  }
}
const myArray = new ArrayRevisited();
const filter = (element: any) => element !== "three";
myArray.push("one");
myArray.push("two");
myArray.push("three");
myArray.push("four");
myArray.push("five");
myArray.push("six");

myArray.filter(filter)
export default ArrayRevisited;
