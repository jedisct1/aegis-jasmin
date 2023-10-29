
#include <stdio.h>
#include <string.h>

#include "crypto_aead_aegis128l.h"

int
main(void)
{
    unsigned char k[16]    = { 0 };
    unsigned char npub[16] = { 0 };
    unsigned char mac[32]  = { 0 };
    unsigned char ad[33]   = { 0 };
    unsigned char m[42]    = { 0 };
    unsigned char ct[42]   = { 0 };

    memset(ad, 0x42, sizeof ad);
    k[0]    = 0x10;
    k[1]    = 0x01;
    npub[0] = 0x10;
    npub[2] = 0x02;

    crypto_aead_aegis128l_encrypt_detached(ct, mac, NULL, m, sizeof m, ad, sizeof ad, NULL, npub,
                                           k);
    int ret =
        crypto_aead_aegis128l_decrypt_detached(m, NULL, ct, sizeof ct, mac, ad, sizeof ad, npub, k);

    for (size_t i = 0; i < sizeof m; i++) {
        printf("%02x", m[i]);
    }
    puts("");
    for (size_t i = 0; i < sizeof mac; i++) {
        printf("%02x", mac[i]);
    }
    puts("");
    printf("ret = %d\n", ret);

    return 0;
}
