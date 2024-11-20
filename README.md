## Daftar Isi 📑 
- [Tugas 7](#tugas-7)
- [Tugas 8](#tugas-8)
- [Tugas 9](#tugas-9)


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

## Tugas 9
### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model dalam proyek Flutter untuk pengambilan atau pengiriman data JSON sangat penting karena memberikan struktur yang jelas untuk data, mempermudah manipulasi, dan menjaga kode tetap bersih serta terorganisasi. Dengan model, data JSON yang kompleks dapat diubah menjadi objek Dart yang mudah diakses melalui atribut, seperti `product.fields.name`, dibandingkan bekerja langsung dengan JSON mentah. Hal ini juga memungkinkan validasi tipe data secara otomatis, sehingga kesalahan seperti format data yang salah atau salah mengetik key dapat dideteksi lebih awal. Selain itu, model mempermudah proses konversi data dari JSON ke objek Dart menggunakan metode `fromJson`, atau sebaliknya ke JSON dengan `toJson`, sehingga lebih efisien dan mengurangi redundansi kode.

Secara teknis, model tidak wajib digunakan tetapi tanpa model, pengelolaan data menjadi lebih sulit dan rentan terhadap kesalahan. Akses langsung ke JSON mentah membutuhkan penggunaan string key seperti `json["fields"]["name"]`, yang rawan kesalahan ketik dan tidak terdeteksi sebelum runtime. Selain itu, tipe data tidak tervalidasi, sehingga jika server mengirim data yang tidak sesuai, seperti mengirim harga sebagai string bukan angka, aplikasi bisa mengalami error. Untuk JSON yang kompleks, proses parsing manual menjadi lebih membingungkan dan meningkatkan risiko kesalahan. Oleh karena itu, meskipun tidak membuat model tidak langsung menyebabkan error, hal ini membuat pengembangan aplikasi menjadi kurang efisien dan sulit dikelola. Membuat model adalah praktik terbaik untuk memastikan pengelolaan data yang lebih aman, terstruktur, dan hemat waktu.
### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http dalam proyek ini berfungsi sebagai alat utama untuk menangani komunikasi antara aplikasi Flutter dan server backend. Library ini digunakan untuk melakukan berbagai operasi seperti mengambil data dari server (HTTP GET), mengirim data ke server (HTTP POST), serta menangani autentikasi pengguna, seperti login dan logout. Pada halaman daftar produk, library ini digunakan untuk mengambil data dari endpoint API backend, kemudian data JSON yang diterima dikonversi menjadi objek Dart menggunakan model ProductEntry. Hal ini mempermudah pengelolaan dan penampilan data di aplikasi.

Selain itu, pada formulir penambahan produk, library http digunakan untuk mengirim data produk baru, seperti nama, deskripsi, stok, harga, dan rating, ke backend melalui metode POST. Dalam autentikasi, library ini memungkinkan pengguna untuk login dengan mengirimkan kredensial ke backend, memvalidasi data, dan mengelola sesi pengguna. Proses logout juga menggunakan library ini dengan mengirimkan permintaan POST untuk mengakhiri sesi pengguna.
### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest adalah sebuah kelas yang berfungsi sebagai pengelola permintaan HTTP dengan kemampuan menyimpan dan menggunakan cookie. Dalam konteks aplikasi Flutter yang menggunakan backend Django (atau framework lain), CookieRequest sering digunakan untuk menangani autentikasi pengguna dan menjaga sesi pengguna tetap aktif melalui cookie yang diterima dari server. 

CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter untuk memastikan konsistensi sesi pengguna, efisiensi pengelolaan autentikasi, dan komunikasi yang mudah dengan backend. Hal ini membuat aplikasi lebih terorganisasi, dapat diandalkan, dan mudah dikelola. 
### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
**1. Input Data**
Pada halaman ProductEntryFormPage, pengguna mengisi formulir dengan atribut produk seperti nama, deskripsi, stok, harga, dan rating.
Ketika tombol "Save" ditekan, data yang diisi oleh pengguna divalidasi menggunakan FormState dan dikonversi menjadi JSON menggunakan jsonEncode.
Data ini kemudian dikirim ke backend melalui metode POST menggunakan CookieRequest.

**2. Pengolahan Data di Backend**
Di backend, data JSON yang diterima melalui endpoint create-flutter/ diproses dan disimpan ke database.
Setelah data berhasil disimpan, backend mengirimkan respons berupa status keberhasilan (misalnya, {"status": "success"}) yang diterima oleh aplikasi Flutter.

**3. Feedback ke Pengguna**
Jika respons dari backend menunjukkan keberhasilan, aplikasi menampilkan notifikasi kepada pengguna menggunakan SnackBar.
Pengguna kemudian diarahkan kembali ke halaman utama atau daftar produk dengan menggunakan Navigator.

**4. Mengambil Data dari Backend**
Pada halaman ProductEntryPage, data produk yang tersimpan di database diambil melalui endpoint API http://127.0.0.1:8000/json/ menggunakan metode GET dengan CookieRequest.
Respons JSON dari backend di-decode menjadi objek

**5. Menampilkan Data di Flutter**
Data produk yang sudah dikonversi menjadi list ProductEntry ditampilkan di halaman ProductEntryPage menggunakan widget seperti ListView.builder.
Ketika pengguna menekan salah satu item, detail produk tersebut ditampilkan di halaman ProductDetailPage, yang menampilkan semua atribut produk.

**6. Detail Produk**
Di halaman ProductDetailPage, semua atribut produk ditampilkan menggunakan widget seperti Text.

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
**1. Register**

**Input Data di Flutter**
* Pada halaman RegisterPage, pengguna mengisi formulir dengan informasi akun, seperti username, password, dan confirm password.
* Ketika tombol "Register" ditekan: Data dari formulir dikirim dalam format JSON ke endpoint http://127.0.0.1:8000/auth/register/ menggunakan metode POST.

**Proses di Backend Django**

Django menerima data JSON melalui register view:
* Memastikan password dan konfirmasi password cocok.
* Memeriksa apakah username sudah digunakan.
* Jika valid, Django membuat akun baru menggunakan model User dan menyimpan data ke database.

Django mengembalikan respons JSON yang berisi:
* Status keberhasilan (status: success).
* Pesan sukses, seperti "User created successfully!".

**Feedback ke Flutter**
* Jika respons menunjukkan pendaftaran berhasil: Pengguna diarahkan ke halaman login (LoginPage) menggunakan Navigator.pushReplacement.
* Jika terjadi kesalahan, seperti username sudah digunakan, pesan error ditampilkan menggunakan SnackBar.

**2. Login**

**Input Data di Flutter**
* Pada halaman LoginPage, pengguna memasukkan username dan password.
* Ketika tombol "Login" ditekan: Data dikirim ke endpoint http://127.0.0.1:8000/auth/login/ menggunakan metode POST.

**Proses di Backend Django**

Django memproses permintaan di login view:
* authenticate memvalidasi username dan password dengan data di database.
* Jika valid:
  * Django mencatat sesi login pengguna menggunakan auth_login.
  * Cookie sesi dikirim kembali ke Flutter untuk menjaga status login.
* Jika invalid:
  * Django mengembalikan pesan error, seperti "Login gagal, periksa kembali email atau kata sandi.".

**Feedback ke Flutter**

Jika login berhasil:
* Flutter menerima cookie sesi yang secara otomatis disimpan oleh CookieRequest.
* Pengguna diarahkan ke halaman utama (MyHomePage) menggunakan Navigator.pushReplacement.
* Pesan welcome, seperti "Selamat datang, [username]", ditampilkan menggunakan SnackBar.

Jika gagal, pesan error ditampilkan dalam dialog.

**3. Logout**

**Proses di Flutter**

* Pada halaman menu utama, pengguna dapat memilih opsi Logout.
* Ketika tombol logout ditekan: Flutter mengirimkan permintaan ke endpoint http://127.0.0.1:8000/auth/logout/ menggunakan metode POST.

**Proses di Backend Django**

Django memproses permintaan di logout view:
* Fungsi auth_logout menghapus sesi pengguna dari server.
* Django mengembalikan respons JSON yang menunjukkan status logout berhasil.

**Feedback ke Flutter**

Jika logout berhasil:
* Pengguna diarahkan kembali ke halaman login (LoginPage) menggunakan Navigator.pushReplacement.
* Pesan seperti "Logout berhasil!" ditampilkan menggunakan SnackBar.

Jika gagal, pesan error ditampilkan.
### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
**Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.**
Menambahkan fungsi `register` pada `views.py` yang ada pada modul `authentication` pada proyek django. Lalu menambahkan path register di urls.py pada `authentication/urls.py`. Selanjutnya membuat sebuah file baru pada proyek flutter di direktori screens dengan nama `register.dart`.

**Membuat halaman login pada proyek tugas Flutter.**
Membuat fungsi `login` pada `views.py` yang ada pada modul `authentication` pada proyek django. Lalu menambahkan path login di urls.py pada `authentication/urls.py` dan menambahkan `path('auth/', include('authentication.urls')),` pada `sayur_shop/urls.py`. Selanjutnya membuat sebuah file baru pada proyek flutter di direktori screens dengan nama `login.dart`. Pada file `main.dart`, pada Widget MaterialApp(...), ubah home: MyHomePage() menjadi `home: const LoginPage()`

**Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.**
* Menginstal package pbp_django_auth dengan perintah:
  ```
  flutter pub add provider
  flutter pub add pbp_django_auth
  ```
  * memodifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider

**Membuat model kustom sesuai dengan proyek aplikasi Django.**
Buat model dengan menyalin data JSON pada proyek Django menggunakan Quicktype. Setelah itu membuat direktori baru bernama `models` dan di dalamnya buat file baru bernama `product_entry.dart` lalu paste kode dari Quicktype.

**Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.**
* Membuat berkas baru pada direktori `lib/screens` dengan nama `list_productentry.dart.`
* Berikut merupakan isi file `list_productentry.dart.`:
  ```
  import 'package:flutter/material.dart';
  import 'package:sayur_shop/models/product_entry.dart';
  import 'package:sayur_shop/screens/product_detail.dart';
  import 'package:sayur_shop/widgets/left_drawer.dart';
  import 'package:pbp_django_auth/pbp_django_auth.dart';
  import 'package:provider/provider.dart';
  
  class ProductEntryPage extends StatefulWidget {
    const ProductEntryPage({super.key});
  
    @override
    State<ProductEntryPage> createState() => _ProductEntryPageState();
  }
  
  class _ProductEntryPageState extends State<ProductEntryPage> {
    Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
      // Ganti URL dengan endpoint API yang sesuai
      final response = await request.get('http://127.0.0.1:8000/json/');
  
      // Decode response menjadi bentuk JSON
      var data = response;
  
      // Konversi data JSON menjadi list objek ProductEntry
      List<ProductEntry> listProduct = [];
      for (var d in data) {
        if (d != null) {
          listProduct.add(ProductEntry.fromJson(d));
        }
      }
      return listProduct;
    }
  
    @override
    Widget build(BuildContext context) {
      final request = context.watch<CookieRequest>();
      return Scaffold(
        appBar: AppBar(
          title: const Text('Product Entry List'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
          future: fetchProduct(request),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return const Column(
                  children: [
                    Text(
                      'Belum ada data produk pada Sayur Shop.',
                      style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailPage(product: snapshot.data![index]),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Name
                          Text(
                            "${snapshot.data![index].fields.name}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Description
                          Text(
                            "Description: ${snapshot.data![index].fields.description}",
                            style: const TextStyle(fontSize: 14.0),
                          ),
                          const SizedBox(height: 10),
                          // Stock
                          Text(
                            "Stock: ${snapshot.data![index].fields.stock}",
                            style: const TextStyle(fontSize: 14.0),
                          ),
                          const SizedBox(height: 10),
                          // Price
                          Text(
                            "Price: Rp${snapshot.data![index].fields.price.toStringAsFixed(0)}",
                            style: const TextStyle(fontSize: 14.0),
                          ),
                          const SizedBox(height: 10),
                          // Rating
                          Text(
                            "Rating: ${snapshot.data![index].fields.rating}",
                            style: const TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            }
          },
        ),
      );
    }
  }

  ```

**Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.**
* Membuat berkas baru pada direktori `lib/screens` dengan nama `product_detail.dart`
* Berikut merupakan isi dari file `product_detail.dart`
  ```
  import 'package:flutter/material.dart';
  import 'package:sayur_shop/models/product_entry.dart';
  
  class ProductDetailPage extends StatelessWidget {
    final ProductEntry product;
  
    const ProductDetailPage({super.key, required this.product});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(product.fields.name),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name: ${product.fields.name}",
                style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                "Description: ${product.fields.description}",
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8),
              Text(
                "Stock: ${product.fields.stock}",
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8),
              Text(
                "Price: Rp${product.fields.price.toStringAsFixed(0)}",
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8),
              Text(
                "Rating: ${product.fields.rating}",
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back to List"),
              ),
            ],
          ),
        ),
      );
    }
  }

  ```

**Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.**

Django memfilter item berdasarkan pengguna login (request.user) menggunakan query filter(user=request.user). Flutter menggunakan CookieRequest untuk mengirim permintaan GET ke endpoint Django. Cookie session yang disimpan oleh CookieRequest memastikan bahwa backend dapat mengenali pengguna yang login. Selanjutnya Data yang sudah difilter di backend ditampilkan di halaman daftar item menggunakan `ListView.builder`. Flutter hanya menerima dan menampilkan item yang sudah difilter oleh backend, memastikan bahwa daftar item yang muncul sesuai dengan pengguna login.
