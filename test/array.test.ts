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

describe("filter", () => {
  it("should filter elements based on the callback condition", () => {
    const newArray = new ArrayRevisited();
    newArray.push("pomme");
    newArray.push("banane");
    newArray.push("orange");
    newArray.push("kiwi");
    
    const filtered = newArray.filter(item => item.includes('a'));
  
    expect(filtered.length).toEqual(2);
    expect(filtered.value).not.toContain("pomme");
    expect(filtered.value).toContain("banane");
    expect(filtered.value).toContain("orange");
    expect(filtered.value).not.toContain("kiwi");
  });

  it("should return an empty array when no elements match the condition", () => {
    const newArray = new ArrayRevisited();
    newArray.push("pomme");
    newArray.push("banane");
    
    const filtered = newArray.filter(item => item.includes('z'));
    
    expect(filtered.length).toEqual(0);
    expect(filtered.value).toHaveLength(0);
  });

  it("should pass the correct arguments to the callback function", () => {
    const newArray = new ArrayRevisited();
    newArray.push("a");
    newArray.push("b");
    
    const mockCallback = jest.fn();
    newArray.filter(mockCallback);
    
    expect(mockCallback).toHaveBeenCalledTimes(2);
    expect(mockCallback).toHaveBeenNthCalledWith(1, "a", 0, newArray.value);
    expect(mockCallback).toHaveBeenNthCalledWith(2, "b", 1, newArray.value);
  });

  it("should return a new ArrayRevisited instance", () => {
    const newArray = new ArrayRevisited();
    newArray.push("a");
    
    const filtered = newArray.filter(() => true);
    
    expect(filtered).toBeInstanceOf(ArrayRevisited);
    expect(filtered).not.toBe(newArray);
  });
});