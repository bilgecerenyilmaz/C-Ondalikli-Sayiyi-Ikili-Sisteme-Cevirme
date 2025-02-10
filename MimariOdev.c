#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void binary_donusum(double num);
int main() {
    char input[20];
    long long tam_kismi = 0;
    double kesir_kismi = 0.0;

    while (1) { 
        printf("Bir sayı giriniz (maksimum 8 basamaktan oluşmalı): ");
        fgets(input, sizeof(input), stdin);

        size_t length = strlen(input);
        if (input[length - 1] == '\n') {
            input[length - 1] = '\0';
        }

        int basamak_sayisi = 0;
        for (int i = 0; i < strlen(input); i++) {
            if ((input[i] >= '0' && input[i] <= '9')) {
                basamak_sayisi++;
            }
        }

        if (basamak_sayisi > 8) {
            printf("Hatalı giriş: En fazla 8 basamaktan oluşabilir.\n");
            continue; 
        }
        
        int geçerli_giriş = 1;
        for (int i = 0; i < strlen(input); i++) {
            if ((input[i] < '0' || input[i] > '9') && input[i] != '.' && input[i] != ',') {
                printf("Hatalı giriş: Geçersiz karakter bulundu.\n");
                geçerli_giriş = 0; 
                break;
            }
        }

        if (!geçerli_giriş) {
            continue;
        }
        break;
    }

    int i = 0;

    while (input[i] != '.' && input[i] != ',' && input[i] != '\0') {
        tam_kismi = tam_kismi * 10 + (input[i] - '0');
        i++;
    }

    if (input[i] == '.' || input[i] == ',') {
        i++; 
        double divisor = 10.0;
        while (input[i] != '\0') {
            kesir_kismi += (input[i] - '0') / divisor;
            divisor *= 10;
            i++;
        }
    }

    printf("\n10-tabanlı Sayı:\n");
    printf("Tam kısmı: %lld\n", tam_kismi);
    printf("Kesir kısmı: %.8f\n", kesir_kismi);
    printf("\nSayının 2-tabanlıya çevrilmesi için Enter tuşuna iki kez basın...\n");
    getchar();
    getchar();

    
    binary_donusum(tam_kismi + kesir_kismi);

    return 0;
}

void binary_donusum(double num) {
    long long tam_kismi = (long long)num;
    double kesir_kismi = num - tam_kismi;

    char binary_int[64] = {0};
    int index = 0;
    do {
        binary_int[index++] = (tam_kismi % 2) + '0';
        tam_kismi /= 2;
    } while (tam_kismi > 0);

    printf("\n2-tabanlı Sayı:\n");
    printf("Tam kısmı: ");
    for (int i = index - 1; i >= 0; i--) {
        printf("%c", binary_int[i]);
    }

    printf("\nKesir kısmı: 0.");
    int count = 0;
    while (kesir_kismi > 0 && count < 10) {
        kesir_kismi *= 2;
        if (kesir_kismi >= 1) {
            printf("1");
            kesir_kismi -= 1;
        } else {
            printf("0");
        }
        count++;
    }
    printf("\n");
}
