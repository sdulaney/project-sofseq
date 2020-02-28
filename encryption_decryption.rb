require 'encryption'

def encrypt(input)
    encryptor = Encryption::Symmetric.new
    # 256-bit encryption key - AES (Symmetric)
    encryptor.key = '7w!z%C*F)J@NcRfUjXn2r5u8x/A?D(G+'
    encryptor.iv = 'Xn2r5u8x/A?D(G+K'
    encrypted_str = nil
    if input.is_a?(Array)
        encrypted_list = input.map{|item| encryptor.encrypt(item)}
        return encrypted_list
    else
        encrypted_str = encryptor.encrypt(input)
        return encrypted_str
    end
end

def decrypt(input)
    encryptor = Encryption::Symmetric.new
    # 256-bit encryption key - AES (Symmetric)
    encryptor.key = '7w!z%C*F)J@NcRfUjXn2r5u8x/A?D(G+'
    encryptor.iv = 'Xn2r5u8x/A?D(G+K'
    encrypted_str = nil
    if input.is_a?(Array)
        decrypted_list = input.map{|item| encryptor.decrypt(item)}
        return decrypted_list
    else
        decrypted_str = encryptor.decrypt(input)
        return decrypted_str
    end
end