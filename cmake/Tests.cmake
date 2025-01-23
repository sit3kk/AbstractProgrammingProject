add_executable(RSAEncryptionTests
    ${CMAKE_SOURCE_DIR}/tests/RSAEncryptionTests.cpp
)

target_link_libraries(RSAEncryptionTests PRIVATE
    RSAEncryptionLibrary        
    ${GMP_LIBRARY}           
    ${GMPXX_LIBRARY}        
    OpenSSL::Crypto     
    Boost::unit_test_framework
)

target_compile_options(RSAEncryptionTests PRIVATE
    ${OPTIMIZATION_FLAGS}
)

target_include_directories(RSAEncryptionTests PRIVATE
    ${OPENSSL_INCLUDE_DIR}
)

add_test(NAME RSAEncryptionTests COMMAND RSAEncryptionTests)