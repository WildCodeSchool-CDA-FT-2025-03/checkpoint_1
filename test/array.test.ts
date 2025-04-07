import ArrayRevisited from "../arrayRevisited";

describe("Array", () => {
  it("should create an array", () => {
    const newArray = new ArrayRevisited();

    expect(newArray.value).toHaveLength(0);
  });

  it("should had an element in the array", () => {
    const newArray = new ArrayRevisited();
    const result = newArray.push("a");

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
  });


  const arrayRevisited = new ArrayRevisited();
  arrayRevisited.push('a');
  arrayRevisited.push('b');
  arrayRevisited.push('c');
  arrayRevisited.push('d');
  arrayRevisited.push('e');
  arrayRevisited.push('f');
  
  it("should filter the array", () => {
    const filteredArray = arrayRevisited.filter((el) => {
      return el !== 'b';
    });
    expect(filteredArray).toEqual(['a', 'c', 'd', 'e', 'f']);
  });

  it("should filter the array", () => {
    const filteredArray = arrayRevisited.filter((el,index) => {
      return el !== 'b' && index !== 3;
    });
    expect(filteredArray).toEqual(['a', 'c', 'e', 'f']);
  });

  it("should not replace the array", () => {
    arrayRevisited.filter((el) => {
      return el !== 'b';
    });
    expect(arrayRevisited.value).toEqual(['a', 'b', 'c', 'd', 'e', 'f']);
    expect(arrayRevisited.length).toEqual(6);
  });

  it("should filter the array and return a new array", () => {
    const filteredArray = arrayRevisited.filter(() => {
      return false;
    });
    expect(filteredArray).toEqual([]);
  });

});
