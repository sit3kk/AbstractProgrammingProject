[PL | EN](README.pl.md)

## Class Descriptions

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
