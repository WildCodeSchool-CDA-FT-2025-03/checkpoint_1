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
