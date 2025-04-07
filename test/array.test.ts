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

describe('ArrayRevisited', () => {
  let arrayRevisited: ArrayRevisited;

  beforeEach(() => {
    arrayRevisited = new ArrayRevisited();
  });

  test('should filter elements who have values based on condition', () => {
    arrayRevisited.push('apple');
    arrayRevisited.push('banana');
    arrayRevisited.push('cherry');
    arrayRevisited.push('date');
    
    // Filtrer les éléments qui contiennent la lettre "a"
    const result = arrayRevisited.filter(value => value.includes('a'));
    
    expect(result).toEqual(['apple', 'banana', 'date']);
  });

  test('should return empty array if no elements have the condition', () => {
    arrayRevisited.push('apple');
    arrayRevisited.push('banana');
    arrayRevisited.push('cherry');
    arrayRevisited.push('date');
    
    // Filtrer les éléments qui contiennent la lettre "z" (aucun élément ne le contient)
    const result = arrayRevisited.filter(value => value.includes('z'));
    
    expect(result).toEqual([]);
  });

  test('should return all elements if all have the condition of length asked', () => {
    arrayRevisited.push('apple');
    arrayRevisited.push('banana');
    arrayRevisited.push('cherry');
    
    // Filtrer les éléments qui ont plus de 5 lettres
    const result = arrayRevisited.filter(value => value.length > 5);
    
    expect(result).toEqual(['banana', 'cherry']);
  });

  test('should return the original array if all elements have the condition of length asked', () => {
    arrayRevisited.push('apple');
    arrayRevisited.push('banana');
    arrayRevisited.push('cherry');
    
    const result = arrayRevisited.filter(value => value.length > 0);
    
    expect(result).toEqual(['apple', 'banana', 'cherry']);
  });
});
