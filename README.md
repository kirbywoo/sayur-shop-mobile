## Daftar Isi 📑 
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
### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Di Flutter, `const` **digunakan** untuk mendefinisikan objek atau widget yang sifatnya konstan dan tidak berubah. Objek yang didefinisikan dengan const akan dibuat sekali dan selalu merujuk pada instance yang sama di memori, tanpa harus dibuat ulang setiap kali widget diapnggil. 
**Keuntungan** `const` yaitu:
* Dapat menghemat memori karena objek atau widget hanya dibuat sekali, sehingga mengurangi konsumsi memori karena tidak perlu membuat instance baru dari objek yang sama.
* Membuat aplikasi lebih cepat dan responsif karena Flutter tidak akan merender ulang widget yang didefinisikan sebagai const saat terjadi rebuild pada UI.
* Flutter dapat melakukan optimalisasi waktu kompilasi pada widget atau objek const dengan lebih baik, karena nilai dari widget tersebut sudah diketahui dan dipastikan tidak akan berubah. Ini bisa mengurangi waktu kompilasi dan dapat mempercepat build aplikasi.

**Kita sebaiknya menggunakan const** jika widget atau objek tidak akan berubah seperti teks, ikon, atau layout yang statis dan tidak membutuhkan update.

**Kita sebaiknya tidak menggunakan const** jika widget atau objek memiliki nilai atau properti yang akan berubah, seperti data yang diambil dari API atau variabel yang berubah berdasarkan interaksi pengguna. Jika digunakan pada widget yang dinamis, const akan menyebabkan error.

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Perbandingan Column dan Row
| **Karakteristik** | **Column** | **Row** |
| -------------- | -------- | -------- |
| Orientasi tata letak | Vertikal (atas ke bawah) | Horizontal (kiri ke kanan) |
| Sumbu utama (mainAxis) | Vertikal | Horizontal |
| Sumbu silang (crossAxis) | Horizontal | Vertikal |
| Penggunaan | Menyusun widget di atas-bawah	| Menyusun widget sejajar ke samping |

**Implementasi Column**
```
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Name: $_name'),
    Text('Description: $_description'),
    Text('Amount: $_amount'),
  ],
)

```
Fungsi Column ini membantu menata tampilan informasi produk agar terlihat rapi dan teratur secara vertikal, dari nama, deskripsi, hingga jumlah yang diinput oleh pengguna.

**Implementasi Row**
```
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InfoCard(title: 'NPM', content: npm),
    InfoCard(title: 'Name', content: name),
    InfoCard(title: 'Class', content: className),
  ],
),

```
Fungsinya untuk menampilkan tiga kartu informasi (InfoCard), masing-masing berisi informasi NPM, Name, dan Class. Dengan menggunakan Row, ketiga InfoCard ini ditampilkan secara horizontal dan tersebar merata.

###  3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
**Elemen input yang digunakan:**
* TextFormField:
  Terdapat tiga TextFormField untuk memasukkan:
  Name: Menyimpan nama produk.
  Description: Menyimpan deskripsi produk.
  Amount: Menyimpan jumlah produk.
  Ketiga elemen TextFormField ini dilengkapi dengan properti seperti labelText, hintText, border, serta fungsi validator untuk melakukan validasi input agar memenuhi kriteria tertentu, seperti memastikan jumlah (Amount) adalah angka positif.

* ElevatedButton:
  Pada tombol Save yang berfungsi untuk menyimpan data yang diinput ke dalam form. Saat tombol ditekan, tombol ini akan melakukan validasi pada TextFormField melalui _formKey.currentState!.validate(). Jika validasi berhasil, maka dialog konfirmasi akan muncul.

**Beberapa elemen input Flutter lain yang tidak digunakan**
* DropdownButtonFormField: Berguna untuk memilih dari daftar pilihan (dropdown). Misalnya, elemen ini dapat digunakan jika pengguna perlu memilih kategori.
* Switch: Menyediakan input toggle (on/off). Contoh penggunaan bisa pada form yang membutuhkan opsi aktif/tidak aktif.
* Checkbox: Input berbentuk kotak centang yang bisa digunakan untuk memilih beberapa pilihan. Ini berguna jika pengguna perlu menandai beberapa fitur produk.
* Radio: Memberikan pilihan dengan hanya satu opsi yang dapat dipilih.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Dalam aplikasi Flutter, saya mengatur tema secara konsisten dengan mendefinisikan tema global di `main.dart` menggunakan `ThemeData` pada parameter `theme` dari `MaterialApp`. Ini memungkinkan saya untuk mendefinisikan elemen seperti warna utama (`primaryColor`), skema warna (`colorScheme`) dan elemen lainnya. Dengan cara ini, setiap bagian aplikasi yang menggunakan `Theme.of(context)` akan mengikuti gaya yang telah ditetapkan, menjaga tampilan aplikasi tetap konsisten di setiap halaman.

Saya mengimplementasikan tema pada aplikasi yang saya buat. Dalam kode saya, tema diatur di `main.dart` menggunakan `ColorScheme.fromSwatch`, di mana warna utama aplikasi (`primarySwatch`) didefinisikan, dan elemen-elemen lainnya seperti `AppBar` dan `DrawerHeader` juga merujuk pada warna yang ditetapkan dalam skema warna ini.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Untuk mengimplementasikan navigasi pada Flutter, dapat ditangani dengan menggunakan Navigator dan Route. 
* Widget Navigator menampilkan halaman-halaman yang ada kepada layar seakan sebagai sebuah tumpukan (stack). Untuk menavigasi sebuah halaman baru, kita dapat mengakses Navigator melalui BuildContext dan memanggil fungsi yang ada, seperti misalnya push(), pop(), serta pushReplacement().
* Untuk aplikasi dengan banyak halaman, menggunakan named routes membantu membuat navigasi lebih terstruktur. Rute didefinisikan dalam MaterialApp pada parameter routes, sehingga setiap halaman memiliki nama unik yang bisa dipanggil dengan Navigator.pushNamed().






