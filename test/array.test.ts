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

  it("should filter elements based on the callback function", () => {
    const newArray = new ArrayRevisited();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    const result = newArray.filter((element) => element !== "b");

    expect(result).toEqual(["a", "c"]);
  });

  it("should return an empty array if no elements match the filter condition", () => {
    const newArray = new ArrayRevisited();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    const result = newArray.filter((element) => element === "d");

    expect(result).toEqual([]);
  });
});
