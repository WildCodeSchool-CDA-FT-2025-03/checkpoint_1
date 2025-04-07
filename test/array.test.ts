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

  it("should filter an array", () => {
    const newArray = new ArrayRevisited();
    newArray.push("a");
    newArray.push("b");
    newArray.push("a");
    newArray.push("c");

    const result = newArray.filter((el) => el === "a");
    expect(result).toEqual(["a", "a"]);
  });

  it("should return empty array when no elements match the filter", () => {
    const newArray = new ArrayRevisited();
    newArray.push("a");
    newArray.push("b");

    const result = newArray.filter((el) => el === "c");
    expect(result).toEqual([]);
  });
});
