## Daftar Isi
- [Tugas 7](#tugas-7)
- [Tugas 8](#tugas-8)


## Tugas 7
### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
   * Stateless widget adalah widget yang tidak memiliki state yang dapat berubah. Artinya, setelah widget ini dibuat, data atau tampilannya tidak akan berubah selama aplikasi berjalan kecuali widget tersebut dibuat ulang secara keseluruhan. Stateless widget cocok digunakan untuk tampilan statis atau komponen UI yang tidak membutuhkan pembaruan data secara dinamis, seperti teks, ikon, atau button.
   * Stateful widget  adalah widget yang memiliki state yang bisa berubah selama aplikasi berjalan. Widget ini dapat memperbarui tampilannya sesuai perubahan data atau interaksi pengguna. Stateful widget digunakan untuk komponen UI yang membutuhkan perubahan atau pembaruan tampilan, seperti form input, animasi, atau komponen interaktif lainnya yang memerlukan pelacakan status. Contohnya seperti  Checkbox, TextField, animasi, atau daftar produk.
   Berikut merupakan perbedaan dari Stateless widget dan Stateful widget:
   #### Perbedaan _Stateless Widget_ dan _Stateful Widget_
  | **Stateless Widget** | **Stateful Widget** |
  | -------------- | -------- |
  | Tidak memiliki state yang dapat berubah. | Memiliki state yang dapat berubah. |
  | Tidak ada metode `setState`. | Menggunakan `setState` untuk memperbarui UI. |
  | Digunakan untuk tampilan yang statis. | Digunakan untuk tampilan yang dinamis. |
  | Lebih ringan dalam penggunaan memori. | Lebih kompleks dan menggunakan lebih banyak memori. |

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
   ### Widget yang digunakan pada proyek ini adalah:
- **MaterialApp**:
    - Fungsi: Menyediakan struktur dasar aplikasi Flutter berbasis Material Design, termasuk tema dan pengaturan navigasi dasar.
    - Digunakan sebagai root dari aplikasi untuk mengatur tema dan halaman awal.
- **Scaffold**:
    - Fungsi: Menyediakan struktur dasar halaman dengan `AppBar` dan `body`, serta mendukung elemen-elemen UI seperti `Drawer`, `FloatingActionButton`, dan `BottomNavigationBar`.
    - Digunakan sebagai kerangka utama halaman `MyHomePage`.
- **AppBar**:
    - Fungsi: Merupakan bagian header di atas halaman yang biasanya berisi judul atau tombol navigasi.
    - Digunakan untuk menampilkan judul “Sayur Shop” di halaman utama aplikasi.
- **Column**:
    - Fungsi: Menyusun widget anak secara vertikal dalam urutan tertentu.
    - Digunakan untuk menyusun `InfoCard` dan grid item secara vertikal di halaman.
- **Row**:
    - Fungsi: Menyusun widget anak secara horizontal dalam satu baris.
    - Digunakan untuk menampilkan tiga widget `InfoCard` yang berisi informasi pengguna dalam satu baris.
- **Padding**:
    - Fungsi: Memberikan jarak di sekitar widget anaknya.
    - Digunakan untuk memberikan jarak antara widget dalam `Column` dan `Row`, serta di dalam widget `ItemCard`.
- **Text**:
    - Fungsi: Menampilkan teks pada layar.
    - Digunakan di berbagai tempat untuk menampilkan judul halaman, informasi pengguna, dan label dari setiap item di grid.
- **GridView.count**:
    - Fungsi: Menyusun widget anak dalam bentuk grid berdasarkan jumlah kolom tertentu.
    - Digunakan untuk menampilkan daftar `ItemCard` dengan tiga kolom.
-  **InfoCard (Custom Widget)**:
    - Fungsi: Widget khusus yang menampilkan informasi berupa judul dan isi (NPM, nama, dan kelas).
    - Digunakan untuk menampilkan data pengguna di halaman utama.
- **Card**:
    - Fungsi: Memberikan wadah dengan tampilan seperti kartu yang memiliki bayangan.
    - Digunakan dalam `InfoCard` untuk membuat tampilan lebih menarik.
- **MediaQuery**:
    - Fungsi: Mengambil informasi mengenai ukuran layar dan orientasi perangkat.
    - Digunakan dalam `InfoCard` untuk menyesuaikan lebar kartu berdasarkan ukuran layar.
- **ItemCard (Custom Widget)**:
    - Fungsi: Widget khusus untuk menampilkan ikon dan teks dari `ItemHomepage` dalam sebuah kartu yang dapat ditekan.
    - Digunakan untuk menampilkan menu "Lihat Daftar Produk", "Tambah Produk", dan "Logout".
- **Material**:
    - Fungsi: Menyediakan efek visual seperti material ink splash dan bayangan untuk widget anak.
    - Digunakan dalam `ItemCard` untuk memberikan efek visual saat kartu ditekan.
- **InkWell**:
    - Fungsi: Menambahkan kemampuan untuk mendeteksi interaksi saat disentuh dan memberikan efek ripple saat ditekan.
    - Digunakan dalam `ItemCard` untuk mendeteksi tap dan menampilkan `SnackBar`.
- **Icon**:
    - Fungsi: Menampilkan ikon berdasarkan data `IconData`.
    - Digunakan untuk menampilkan ikon yang sesuai untuk setiap item (contoh: ikon keranjang belanja dan ikon tambah).
- **SnackBar**:
    - Fungsi: Menampilkan pesan singkat di bagian bawah layar sebagai feedback untuk interaksi pengguna.
    - Digunakan saat `ItemCard` ditekan, memberikan notifikasi bahwa pengguna menekan tombol tertentu.
- **ScaffoldMessenger**:
    - Fungsi: Menangani pengelolaan `SnackBar` di dalam aplikasi.
    - Digunakan untuk menampilkan `SnackBar` di halaman.
### 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
  #### Dalam `StatefulWidget`, `setState()` digunakan untuk:
  - Memperbarui nilai variabel yang berubah secara dinamis atau berdasarkan interaksi pengguna.
  - Men-trigger *rebuild* widget, sehingga UI menampilkan perubahan terbaru sesuai nilai variabel yang telah diubah.

variabel yang dapat terdampak dengan fungsi tersebut biasanya variabel yang menyimpan nilai input pengguna dalam aplikasi, misalnya isi dari formulir atau pilihan pengguna, counter atau penghitung, animasi, dan Nilai-nilai yang Berubah Secara Dinamis.
### 4. Jelaskan perbedaan antara const dengan final.
  Perbedaan antara const dan final dalam pemrograman Dart terletak pada cara dan waktu inisialisasi nilai. Variabel yang dideklarasikan dengan kata kunci final hanya dapat diinisialisasi sekali, namun nilainya dapat ditentukan saat runtime, sehingga memungkinkan penggunaan nilai dinamis. Di sisi lain, variabel yang dideklarasikan dengan kata kunci const harus diinisialisasi dengan nilai yang sudah diketahui pada waktu kompilasi (compile-time), sehingga semua nilai yang digunakan harus bersifat statis dan tidak dapat berubah.
  
  Selain itu, meskipun nilai final tidak dapat diubah setelah ditetapkan, objek yang dirujuk oleh variabel tersebut bisa bersifat mutable. Sebaliknya, nilai dan objek yang dideklarasikan dengan const sepenuhnya immutable. Dengan demikian, penggunaan final lebih fleksibel untuk situasi di mana nilai ditentukan secara dinamis, sedangkan const lebih cocok untuk nilai-nilai yang tetap dan sudah pasti.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
#### Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
Masuk ke direktori lokal untuk menyimpan proyek, lalu generate proyek flutter baru pada terminal dengan nama sayur_shop dengan cara `flutter create sayur_shop`
#### Membuat tiga tombol sederhana dengan ikon dan teks untuk melihat daftar produk (`Lihat Daftar Produk`), menambah produk (`Tambah Produk`), logout (`Logout`)
Pada kelas MyHomePage, list items diinisialisasi yang berisi tiga objek ItemHomepage:
```
final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.shopping_cart),
    ItemHomepage("Tambah Produk", Icons.add),
    ItemHomepage("Logout", Icons.logout),
];
```
* Tombol-tombol tersebut ditampilkan dalam layout berbentuk grid dengan tiga kolom. Hal ini dilakukan menggunakan widget GridView.count di dalam build method kelas MyHomePage.
* Setiap tombol dirender menggunakan ItemCard, sebuah kelas stateless widget yang menerima objek ItemHomepage sebagai parameter. Di dalam ItemCard, ikon dan teks dari tombol ditampilkan di dalam Column, dengan ikon di atas dan teks di bawahnya.
* Setiap ItemCard dibungkus dalam InkWell, yang memungkinkan interaksi saat disentuh. Ketika tombol ditekan, sebuah pesan SnackBar muncul untuk menunjukkan tombol mana yang ditekan.
#### Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
* Menambahkan variabel backgroundColor yang nilainya akan ditentukan berdasarkan nama item (item.name) di dalam kelas ItemCard
* Lalu menggunakan switch case untuk menentukan warna tiap item button, jika item.name adalah "Lihat Daftar Produk", warna akan diatur menjadi biru, jika "Tambah Produk", warna akan diatur menjadi hijau; dan jika "Logout", warna akan diatur menjadi merah.
  ```
  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    // Menentukan warna berdasarkan nama item
    switch (item.name) {
      case "Lihat Daftar Produk":
        backgroundColor = Colors.blue;
        break;
      case "Tambah Produk":
        backgroundColor = Colors.green;
        break;
      case "Logout":
        backgroundColor = Colors.red;
        break;
      default:
        backgroundColor = Theme.of(context).colorScheme.secondary;
    }
  ```
* Pada return Material, ubah value color menjadi backgroundColor
  ```
  return Material(
      color: backgroundColor,
  ```
#### Memunculkan Snackbar
* Menggunakan onTap, yaitu fungsi yang dijalankan ketika kartu ditekan. ScaffoldMessenger digunakan untuk menampilkan Snackbar dengan pesan yang disesuaikan berdasarkan nama item yang ditekan (item.name).
  ```
  child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
  ```

  ## Tugas 8
