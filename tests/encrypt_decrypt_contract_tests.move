#[test_only]
module encrypt_decrypt_contract::test {
    use encrypt_decrypt_contract::encrypt_decrypt_contract;

    #[test]
    public fun test_encoding_decoding() {
        let original = vector<u8>[0x12, 0x34, 0xab, 0xcd];
        let encoded = encrypt_decrypt_contract::encode_to_hex(original);
        assert!(encoded == b"1234abcd", 1);

        let decoded = encrypt_decrypt_contract::decode_from_hex(b"1234abcd");
        assert!(decoded == original, 2);
    }
}
