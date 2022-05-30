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
![no1a-jwb](https://user-images.githubusercontent.com/66405353/170908806-38080726-6d51-49e9-86aa-2d2df539d4f6.png)


Standar deviasi dari selisih pasangan tabel diatas adalah `6.359595`


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
A. H0 dan H1 \
H0: µ1 - µ2 = 0  \
H1: µ1 - µ2 ≠ 0  

### 3b
B. Hitung Sampel Statistik
```r
xbar1 = 3.64 
xbar2 = 2.79
n1 = 19
n2 = 27
sigma1 = 1.67
sigma2 = 1.32
zstat = (xbar1-xbar2-0)/sqrt(sigma1*sigma1/n1+sigma2*sigma2/n2)
pvalue = 2*pnorm(q=zstat, lower.tail=FALSE)
pvalue
```

![no3b-jwb](https://user-images.githubusercontent.com/66405353/170922278-ea92e30a-efdb-4e1a-8530-a6c41acfaacc.png)

Dihasilkan pvalue `0.06444906`

### 3c
C. Lakukan Uji Statistik (df =2)
```r
zsum.test(
  mean.x = 3.64, s.x = 1.67, n.x = 19, 
  mean.y = 2.79 , s.y = 1.32, n.y = 27, 
  alternative = "two.sided", var.equal = TRUE
)
```
![no3c-jwb](https://user-images.githubusercontent.com/66405353/170922356-9bf98f96-d7dd-46ca-a110-4561e66abc01.png)

95% confidence interval 
`-0.05098149 <= µ1 - µ2 <= 1.75098149 `

### 3d
D. Nilai Kritikal
```r
critVal = qnorm(p=.05/2, lower.tail=FALSE)
critVal
```

![no3d-jwb](https://user-images.githubusercontent.com/66405353/170922412-a2b75b6d-f853-4b48-a6a4-fb2426822091.png)

### 3e
E. Keputusan

Hasil uji statistik  `zstat = 1.849061` kurang dari nilai kritikal `critVal = 1.959964`. Maka gagal menolak H0 pada  α = 0.05, H1 diterima

### 3f
F. Kesimpulan
Tidak terdapat perbedaan pada rata-rata saham Bandung dan rata-rata saham Bali

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

```r
data = read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"), check.names = TRUE, header = TRUE,)
groups = split(data, data$Group)
group1 = groups$`1`
group2 = groups$`2`
group3 = groups$`3`
```
Pertama ambil data dan pisahkan menjadi group 1, 2, dan 3
```r
qqnorm(group1$Length)
qqline(group1$Length)
qqnorm(group2$Length)
qqline(group2$Length)
qqnorm(group3$Length)
qqline(group3$Length)
```
Gunakan ggnorm dan ggline untuk melihat plot

<img width="534" alt="no4a1-jwb" src="https://user-images.githubusercontent.com/66405353/170899666-81cd8cfb-3b2d-4cf3-a78c-fcb19c517f18.png">
<img width="534" alt="no4a2-jwb" src="https://user-images.githubusercontent.com/66405353/170899672-0be330e6-07fe-4f83-93fd-f500152b1457.png">
<img width="534" alt="no4a3-jwb" src="https://user-images.githubusercontent.com/66405353/170899675-f2e2b8b8-fd46-469b-9c38-7659ff5ba14b.png">

Tidak terlihat outlier yang menonjol dari ketiga group

### 4b
B. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ? \
\
```r
bartlett.test(Length~Group, data=data)
```
![no4b-jwb](https://user-images.githubusercontent.com/66405353/170900628-4d50061f-ecb4-47b5-9126-4857e5698bc7.png)

H0: Tidak ada perbedaan varians dari group-group \
H0: Ada perbedaan varians dari group-group
\
Menggunakan bartlett test, ditemukan `Bartlett's K-squared = 0.43292, df = 2, p-value
= 0.8054`. Dengan α=0.05, p value lebih dari 0.05, sehingga gagal menolak H0. Kesimpulan, Tidak ada perbedaan varians dari group-group, dapat melanjutkan dengan one way ANOVA

### 4c
C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1.

```r
model1 = lm(Length ~ Group, data = data)
anova(model1)
```
![no4c-jwb](https://user-images.githubusercontent.com/66405353/170904459-0f437d2b-a947-4fbe-9bc2-85c113ca0083.png)

### 4d
D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0? \
\
Ditemukan p value adalah `0.0013` kurang dari `α = 0.05`. Tolak H0, Kesimpulan: Terdapat ada perbedaan signifikan antara group-group

### 4e
E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?
Jelaskan.

```r
TukeyHSD(aov(model1))
```


![no4e-jwb](https://user-images.githubusercontent.com/66405353/170905347-905e2b50-7c2e-4b48-b39c-43e293111e7c.png)

Group 1 : kucing oren \
Group 2 : kucing hitam \
Group 3 : kucing putih \
\ 
Jika p value pasangan group > 0.05 maka panjangnya berbeda, jika < 0.05 maka panjangnya sama. Dapat dilihat p value pasangan group 3-1 memiliki p value 0.872 sehingga memiliki panjang berbeda.



### 4f
F. Visualisasikan data dengan ggplot2

```r
install.packages("ggplot2")
library(ggplot2)
ggplot(data, aes(x = Group, y = Length)) +
  geom_boxplot(color = c("#00AFBB", "#E7B800", "#FC4E07")) +
  scale_x_discrete() + xlab("Group") + ylab("Length (cm)")
```

<img width="534" alt="no4f-jwb" src="https://user-images.githubusercontent.com/66405353/170905359-23ad8226-30dc-4903-8730-823286516583.png">


## Nomor 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut:

```r
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL = read_csv("GTL.csv")
head(GTL)
```
Install package dan ambil data pada .csv file dalam Documents.

### 5a
a. Buatlah plot sederhana untuk visualisasi data

```r
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
      facet_grid(.~Glass, labeller = label_both)
```
<img width="534" alt="no5a-jwb" src="https://user-images.githubusercontent.com/66405353/170907970-d409ed19-d92f-46f0-a45d-19c0b2936a30.png">


### 5b
b. Lakukan uji ANOVA dua arah
```r
GTL$Glass = as.factor(GTL$Glass)
GTL$Temp_Factor = as.factor(GTL$Temp)
str(GTL)

anova = aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)
```
![no5b-jwb](https://user-images.githubusercontent.com/66405353/170907987-7d72c433-8e8e-4601-a0b8-bb1a4f07e3d1.png)

### 5c
c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
```r
summary = group_by(GTL, Glass, Temp) %>%
summarise(mean=mean(Light), sd=sd(Light)) %>%
arrange(desc(mean))
summary
```
![no5c-jwb](https://user-images.githubusercontent.com/66405353/170908002-1994aac1-a167-41ed-8b4a-1e9ddcfa68eb.png)

### 5d
d. Lakukan uji Tukey
```r
tukey = TukeyHSD(anova)
tukey
```
![no5d-jwb](https://user-images.githubusercontent.com/66405353/170908008-ecccd20b-1cc9-41c8-be5a-4daaf6e98ea1.png)


### 5e
e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey
```r
tukey.cld = multcompLetters4(anova, tukey)
tukey.cld

cld = as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey = cld$Letters
data_summary
```
![no5e1-jwb](https://user-images.githubusercontent.com/66405353/170908029-94781cf3-83b8-48aa-95f4-209e4b03b1ca.png)

![no5e2-jwb](https://user-images.githubusercontent.com/66405353/170908041-f301e092-33d0-41ee-b151-89ef0c3a0009.png)

