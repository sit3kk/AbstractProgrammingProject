# RSAEncryption Project Documentation

[EN](#class-descriptions-in-english) | [PL](#opis-klas-po-polsku)

---

## Class Descriptions (in English)

### Base64

The `Base64` class provides methods for encoding and decoding data in Base64 format.

#### Methods:

- `std::string encode(const std::vector<uint8_t>& data)`  
  Encodes binary data into a Base64 string.
- `std::vector<uint8_t> decode(const std::string& encoded)`  
  Decodes a Base64 string into binary data.

---

### BigIntUtils

The `BigIntUtils` class provides utility functions for operations on large integers.

#### Methods:

- `T gcd(T a, T b)`  
  Computes the greatest common divisor (GCD).
- `T modInverse(T a, T m)`  
  Computes the modular inverse of `a` modulo `m`.

---

### HashUtils

The `HashUtils` class handles hashing operations.

#### Methods:

- `std::string hash(const std::string& data)`  
  Generates a hash for the given data.

---

### PGPFormatter

The `PGPFormatter` class is responsible for formatting and parsing PGP messages and keys.

#### Methods:

- `std::string exportPGPMessage(const std::string& message)`  
  Exports a PGP message.
- `std::string importPGPMessage(const std::string& message)`  
  Imports a PGP message.
- `std::string exportPGPPublicKey(const std::pair<FIter, FIter>& keyPair)`  
  Exports a public key in PGP format.
- `std::string exportPGPPrivateKey(const std::pair<FIter, FIter>& keyPair)`  
  Exports a private key in PGP format.

---

### PrimeUtils

The `PrimeUtils` class handles prime number generation.

#### Methods:

- `T generateRandomPrime(T min, T max)`  
  Generates a random prime number within a range.

---

### RSACertificateManager

The `RSACertificateManager` class manages RSA certificates.

#### Methods:

- `RSACertificate createCertificate(const std::string& ownerName, const std::pair<T, T>& publicKey, T privateKey)`  
  Creates an RSA certificate.
- `bool validateCertificate(const RSACertificate& cert)`  
  Validates an RSA certificate.

---

### RSAEncryptor

The `RSAEncryptor` class handles RSA encryption and decryption.

#### Methods:

- `T encrypt(T message, T publicKey, T modulus)`  
  Encrypts a message using RSA.
- `T decrypt(T cipherText, T privateKey, T modulus)`  
  Decrypts a message using RSA.

---

### RSAKeyExporter

The `RSAKeyExporter` class allows exporting RSA keys.

#### Methods:

- `std::string exportPublicKey(const std::pair<T, T>& key)`  
  Exports a public key.
- `std::string exportPrivateKey(const std::pair<T, T>& key)`  
  Exports a private key.

---

### RSAKeyGenerator

The `RSAKeyGenerator` class generates RSA keys.

#### Methods:

- `std::pair<std::pair<T, T>, T> generateKeys(T min, T max)`  
  Generates public and private keys.

---

### RSASignatureManager

The `RSASignatureManager` class manages RSA signatures.

#### Methods:

- `T generateSignature(const std::string& message, T privateKey, T modulus)`  
  Generates an RSA signature.
- `bool verifySignature(T signature, const std::string& message, T publicKey, T modulus)`  
  Verifies an RSA signature.

---

## Opis klas (po polsku)

### Base64

Klasa `Base64` zapewnia metody do kodowania i dekodowania danych w formacie Base64.

#### Metody:

- `std::string encode(const std::vector<uint8_t>& data)`  
  Koduje dane binarne na ciąg Base64.
- `std::vector<uint8_t> decode(const std::string& encoded)`  
  Dekoduje ciąg Base64 na dane binarne.

---

### BigIntUtils

Klasa `BigIntUtils` oferuje funkcje pomocnicze dla operacji na dużych liczbach całkowitych.

#### Metody:

- `T gcd(T a, T b)`  
  Oblicza największy wspólny dzielnik (NWD).
- `T modInverse(T a, T m)`  
  Oblicza odwrotność modularną liczby `a` modulo `m`.

---

### HashUtils

Klasa `HashUtils` obsługuje operacje haszowania.

#### Metody:

- `std::string hash(const std::string& data)`  
  Tworzy hash dla podanych danych.

---

### PGPFormatter

Klasa `PGPFormatter` odpowiada za formatowanie i parsowanie wiadomości oraz kluczy PGP.

#### Metody:

- `std::string exportPGPMessage(const std::string& message)`  
  Eksportuje wiadomość PGP.
- `std::string importPGPMessage(const std::string& message)`  
  Importuje wiadomość PGP.
- `std::string exportPGPPublicKey(const std::pair<FIter, FIter>& keyPair)`  
  Eksportuje klucz publiczny w formacie PGP.
- `std::string exportPGPPrivateKey(const std::pair<FIter, FIter>& keyPair)`  
  Eksportuje klucz prywatny w formacie PGP.

---

### PrimeUtils

Klasa `PrimeUtils` obsługuje generowanie liczb pierwszych.

#### Metody:

- `T generateRandomPrime(T min, T max)`  
  Generuje losową liczbę pierwszą w przedziale.

---

### RSACertificateManager

Klasa `RSACertificateManager` zarządza certyfikatami RSA.

#### Metody:

- `RSACertificate createCertificate(const std::string& ownerName, const std::pair<T, T>& publicKey, T privateKey)`  
  Tworzy certyfikat RSA.
- `bool validateCertificate(const RSACertificate& cert)`  
  Waliduje certyfikat RSA.

---

### RSAEncryptor

Klasa `RSAEncryptor` obsługuje szyfrowanie i deszyfrowanie RSA.

#### Metody:

- `T encrypt(T message, T publicKey, T modulus)`  
  Szyfruje wiadomość za pomocą RSA.
- `T decrypt(T cipherText, T privateKey, T modulus)`  
  Deszyfruje wiadomość za pomocą RSA.

---

### RSAKeyExporter

Klasa `RSAKeyExporter` umożliwia eksport kluczy RSA.

#### Metody:

- `std::string exportPublicKey(const std::pair<T, T>& key)`  
  Eksportuje klucz publiczny.
- `std::string exportPrivateKey(const std::pair<T, T>& key)`  
  Eksportuje klucz prywatny.

---

### RSAKeyGenerator

Klasa `RSAKeyGenerator` generuje klucze RSA.

#### Metody:

- `std::pair<std::pair<T, T>, T> generateKeys(T min, T max)`  
  Generuje klucze publiczny i prywatny.

---

### RSASignatureManager

Klasa `RSASignatureManager` zarządza podpisami RSA.

#### Metody:

- `T generateSignature(const std::string& message, T privateKey, T modulus)`  
  Generuje podpis RSA.
- `bool verifySignature(T signature, const std::string& message, T publicKey, T modulus)`  
  Weryfikuje podpis RSA.
