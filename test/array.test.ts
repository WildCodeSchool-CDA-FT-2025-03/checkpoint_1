import ArrayRevisited from "../arrayRevisited";

describe("Array", () => {
  it("should create an array", () => {
    const newArray = new ArrayRevisited();
    expect(newArray.value).toHaveLength(0);
  });

  it("should add an element in the array", () => {
    const newArray = new ArrayRevisited();
    const result = newArray.pushTest("a");
    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
  });

  it("should filter elements based on the callback", () => {
    const newArray = new ArrayRevisited();

    newArray.pushTest("banane");
    newArray.pushTest("kiwi");
    newArray.pushTest("fraise");
    newArray.pushTest("pomme");

    const result = newArray.filter((fruit) => fruit.length > 5);

    expect(result).toEqual(["banane", "fraise"]);
  });
});
