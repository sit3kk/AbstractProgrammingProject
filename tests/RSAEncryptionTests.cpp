#define BOOST_TEST_MODULE RSAEncryptionTests
#include <boost/test/included/unit_test.hpp>
#include "RSAKeyGenerator.hpp"
#include "RSAKeyExporter.hpp"
#include "RSAEncryptor.hpp"
#include "RSACertificateManager.hpp"

BOOST_AUTO_TEST_CASE(RSAKeyGenerator_GeneratesKeys) {
    using MyType = mpz_class;
    MyType min = mpz_class(1) << 512;
    MyType max = (mpz_class(1) << 513) - 1;

    auto [publicKey, privateKey] = RSAKeyGenerator<MyType>::generateKeys(min, max);
    BOOST_CHECK_EQUAL(publicKey.first, 65537);

    BOOST_CHECK(publicKey.second > min * min);

    BOOST_CHECK(privateKey.first > 0);
}

BOOST_AUTO_TEST_CASE(RSACertificateManager_CreatesValidCertificate) {
    using MyType = mpz_class;
    auto [publicKey, privateKey] = RSAKeyGenerator<MyType>::generateKeys(mpz_class(1) << 512, (mpz_class(1) << 513) - 1);

    RSACertificate<MyType> cert("John Doe", publicKey, privateKey.first, publicKey.second);
    BOOST_CHECK_EQUAL(cert.getOwnerName(), "John Doe");
    BOOST_CHECK_EQUAL(cert.getPublicKey().first, publicKey.first);
    BOOST_CHECK_EQUAL(cert.getPublicKey().second, publicKey.second);
}

BOOST_AUTO_TEST_CASE(RSACertificateManager_VerifiesSignature) {
    using MyType = mpz_class;
    auto [publicKey, privateKey] = RSAKeyGenerator<MyType>::generateKeys(mpz_class(1) << 512, (mpz_class(1) << 513) - 1);

    std::string message = "Hello, RSA!";
    MyType signature = RSAEncryptor<MyType>::generateSignature(message, privateKey.first, publicKey.second);

    bool valid = RSAEncryptor<MyType>::verifySignature(signature, message, publicKey.first, publicKey.second);
    BOOST_CHECK(valid);
}