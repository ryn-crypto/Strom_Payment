
# Strom Payment

adalah web aplikasi yang memiliki fungsi untuk mengelola data pelanggan pengguna listrik pasca bayar.

program ini juga memudahkan pelanggan untuk melakukan pembayaran secara online, selain itu pelanggan juga bisa melihat total penggunaan dalam 1 bulan, history pembayaran, dan juga mengajukan perubahan daya.

## Deployment

Untuk menjalankan program ini bisa menggunakan cara berikut

- Download dan pindahkan file ke dalam folder lokal
- buat database dengan nama "strom_payment"
- Buka code editor
- ubah file .env dengan nama DB_DATABASE
- Buka terminal dan ikuti langkah berikut

```bash
  php artisan migrate
```

```bash
  php artisan db:seed
```

- kemudian untuk menjalankan server program
```bash
  php artisan serve
```

## Login

Gunakan user berikut

```bash
  email : riyandotianto2@gmail.com
  password : 12345
```
    
## Authors

- [@Riyan](https://github.com/ryn-crypto/)

