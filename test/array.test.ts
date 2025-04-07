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
});
