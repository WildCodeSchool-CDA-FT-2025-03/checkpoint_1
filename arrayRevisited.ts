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

  filter(callback: (value: string, index: number, array: string[]) => boolean): string[] {
    const filteredArray: string[] = [];

    for (let i = 0; i < this.value.length; i++) {
      if (callback(this.value[i], i, this.value)) {
        filteredArray.push(this.value[i]);
      }
    }

    return filteredArray;
  }
}

export default ArrayRevisited;

const arrayRevisited = new ArrayRevisited();

arrayRevisited.push('apple');
arrayRevisited.push('banana');
arrayRevisited.push('cherry');
arrayRevisited.push('date');
console.log({arrayRevisited});
const filteredResult = arrayRevisited.filter(value => value.includes('a'));
console.log('Tableau après filtrage avec "a":', filteredResult);
