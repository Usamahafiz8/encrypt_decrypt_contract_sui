module encrypt_decrypt_contract::encrypt_decrypt_contract {

    use 0x2::hex;

    /// Encode a vector of bytes into a hex string
    public fun encode_to_hex(bytes: vector<u8>): vector<u8> {
        hex::encode(bytes)
    }

    /// Decode a hex string into a vector of bytes
    public fun decode_from_hex(hex_string: vector<u8>): vector<u8> {
        hex::decode(hex_string)
    }
}
