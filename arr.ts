function monFiltre<tableau>(
  array: tableau[],
  callback: (value: tableau, index: number, array: tableau[]) => boolean
): tableau[] {
  const result: tableau[] = [];

  for (let i = 0; i < array.length; i++) {
    const value = array[i];
    if (callback(value, i, array)) {
      result.push(value);
    }
  }

  return result;
}

const numbers = [1, 2, 3, 4, 5, 6];

const evenNumbers = monFiltre(numbers, (num) => num % 2 === 0);

console.info(evenNumbers);

// Tests unitaires
describe("monFiltre", () => {
  test("devrait filtrer les nombres pairs", () => {
    const numbers = [1, 2, 3, 4, 5, 6];
    const result = monFiltre(numbers, (num) => num % 2 === 0);
    expect(result).toEqual([2, 4, 6]);
  });

  test("devrait filtrer les nombres impairs", () => {
    const numbers = [1, 2, 3, 4, 5, 6];
    const result = monFiltre(numbers, (num) => num % 2 !== 0);
    expect(result).toEqual([1, 3, 5]);
  });

  test("devrait filtrer les nombres supérieurs à 3", () => {
    const numbers = [1, 2, 3, 4, 5, 6];
    const result = monFiltre(numbers, (num) => num > 3);
    expect(result).toEqual([4, 5, 6]);
  });

  test("devrait retourner un tableau vide si aucun élément ne correspond", () => {
    const numbers = [1, 2, 3, 4, 5, 6];
    const result = monFiltre(numbers, (num) => num > 10);
    expect(result).toEqual([]);
  });

  test("devrait fonctionner avec un tableau vide", () => {
    const emptyArray: number[] = [];
    const result = monFiltre(emptyArray, (num) => num > 0);
    expect(result).toEqual([]);
  });

  test("devrait fonctionner avec des chaînes de caractères", () => {
    const strings = ["a", "b", "c", "d", "e"];
    const result = monFiltre(strings, (str) => str === "a" || str === "e");
    expect(result).toEqual(["a", "e"]);
  });

  test("devrait utiliser l'index dans la fonction de callback", () => {
    const numbers = [1, 2, 3, 4, 5];
    const result = monFiltre(numbers, (_, index) => index % 2 === 0);
    expect(result).toEqual([1, 3, 5]);
  });

  test("devrait utiliser le tableau original dans la fonction de callback", () => {
    const numbers = [1, 2, 3, 4, 5];
    const result = monFiltre(numbers, (value, _, array) => value === array[0]);
    expect(result).toEqual([1]);
  });
});
