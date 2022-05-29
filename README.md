# P2_Probstat_A_5025201049

Doanda Dresta Rahma

5025201049

Probabilitas dan Statistik

## Nomor 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

![praktikum-2-no1](https://user-images.githubusercontent.com/66405353/170859025-33b6665b-22a1-406a-abae-7730d42ce4a1.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

### 1a
a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
diatas

```r
# 1.a.
x = c(78,75,67,77,70,72,78,74,77)
y = c(100,95,70,90,90,90,89,90,100)
sd(x-y)
```
Standar deviasi dari selisih pasangan tabel diatas adalah ❓❓❓


### 1b
b. carilah nilai t (p-value)

![no1b-jwb](https://user-images.githubusercontent.com/66405353/170862320-640235c9-25ae-4023-92a5-aea139dfdaf7.png)

Dari hasil di atas ditemukan `t = -7.6525` dan `p-value = 6.003e-05`

### 1c
c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”\
\
𝛼 = 5% maka confidence level = 0.95\
\
Dari gambar pada 1b dapat dilihat confidence interval berada pada jangkauan negatif hingga negatif. Oleh karena itu hipotesis nol ditolak dan hipotesis alternatif diterima. Terdapat
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 dengan tingkat keyakinan 95%


## Nomor 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer.

### 2a
a. Apakah Anda setuju dengan klaim tersebut?
```r
# 2.a.
zsum.test(
  mean.x = 23500,
  n.x = 100,
  sigma.x = 3900,
  alternative = c("greater"),
  mu = 20000,
  conf.level = 0.95,
)
```
![no2a-jwb](https://user-images.githubusercontent.com/66405353/170865127-12cb9912-b43e-4b78-9e75-b29ae5f79c7e.png)

Setuju

### 2b
b. Jelaskan maksud dari output yang dihasilkan!
H0: Mobil dikemudikan rata-rata tidak lebih dari 20.000 kilometer per tahun\
H1: Mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun\
\
Dari gambar pada 2a, ditemukan nilai `z = 8.9744`, `p-value < 2.2e-16` dan `mean = 23500 ` \
Ditemukan 95% confidence interval:  `22858.51 < µ` 


### 2c
c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!\
\
Pertama cari nilai z
```r
xbar = 23500
mu = 20000
sigma = 3900
n = 100
z = (xbar - mu)/(sigma/sqrt(n))
z
```
![no2c1-jwb](https://user-images.githubusercontent.com/66405353/170865707-bde14c13-af51-4381-981a-62b140a17cb4.png)

```r
p = pnorm(q=z, lower.tail=FALSE)
p
```
![no2c2-jwb](https://user-images.githubusercontent.com/66405353/170865708-bfb23ac7-e3a8-4d0c-88d8-43990c84e213.png) \

Didapatkan p value `1.425032e-19` kurang dari 𝛼 = 0.05 Sehingga menolak hipotesis nol dan menerima hipotesis alternatif.
Kesimpulan: Mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun dengan tingkat keyakinan 95%



## Nomor 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

![no3-soal](https://user-images.githubusercontent.com/66405353/170859559-95f73cf4-8806-4765-b770-84ae5de3d188.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :

### 3a
A. H0 dan H1
H0: µ1 - µ2 = 0  \
H0: µ1 - µ2 ≠ 0  

### 3b
B. Hitung Sampel Statistik
```r
tsum.test(
  mean.x = 3.64, s.x = 1.67, n.x = 19, 
  mean.y = 2.79 , s.y = 1.32, n.y = 27, 
  alternative = "greater", var.equal = TRUE
)
```


### 3c
C. Lakukan Uji Statistik (df =2)
### 3d
D. Nilai Kritikal
### 3e
E. Keputusan
### 3f
F. Kesimpulan

## Nomor 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing. \
Jika :\
diketahui dataset https://intip.in/datasetprobstat1 \
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama

Maka Kerjakan atau Carilah:

### 4a
A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians.
### 4b
B. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
### 4c
C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1.
### 4d
D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?
### 4e
E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?
Jelaskan.
### 4f
F. Visualisasikan data dengan ggplot2


## Nomor 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut:
### 5a
a. Buatlah plot sederhana untuk visualisasi data
### 5b
b. Lakukan uji ANOVA dua arah
### 5c
c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
### 5d
d. Lakukan uji Tukey
### 5e
e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey
