// Finding prime numbers till n using Sieve of Eratosthenes





// Function to check if a number is prime.
bool isPrime(int num) {
  // Start the loop from 2 because 1 is not a prime number and
  // we don't need to check for 1 as a divisor.

  // The loop will run from i = 2 up to the square root of num (i * i <= num).
  // This is because a larger factor of num must be a multiple of a smaller factor
  // and hence would have already been found when i <= sqrt(num).
  for (int i = 2; i * i <= num; i++) {
    // If num is divisible by i, it means num is not prime.
    // num % i checks if there's a remainder when num is divided by i.
    if (num % i == 0) {
      // If a divisor is found, num is not a prime number.
      return false;
    }
  }

  // If no divisors are found, the number is prime.
  return true;
}
