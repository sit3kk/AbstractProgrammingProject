[PL | EN](README.md)

## Opis klas

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
