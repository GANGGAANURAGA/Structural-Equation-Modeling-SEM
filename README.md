# Structural Equation Modeling (SEM) - Covariance
Structural Equation Modeling (SEM) merupakan sebuah teknik analisis statistika yang mengkombinasikan beberapa aspek yang  terdapat  pada multiple  regression  analysis dan factor analysis untuk mengestimasi  beberapa  persamaan  secara simultan. Ada dua hal yang dilakukan dan dihasilkan dalam SEM, yaitu (i) mengestimasi beberapa persamaan yang saling berhubungan secara simultan dengan  output  model  struktural (structural  model) dan  (ii)  merepresentasikan  variabel-variabel laten (construct/latent/unobserved variables) berdasarkan variabel-variabel indikator (manifest/observed variables) dengan output model pengukuran (measurement model).
Tahapan SEM berbasis covariance secara umum adalah sebagai berikut :
1. Membangun justifikasi teori atau konseptual teori yang akan digunakan pemodelan.
2. Membuat diagram jalur atau path diagram berdasarkan justifikasi teori atau konseptual teori yang digunakan.
3. Membuat persamaan matematis untuk postulate model / model awal berdasarkan diagram jalur atau path diagram yang telah dibangun.
4. Identifikasi Model dan Pemeriksaan asumsi normal multivariate pada data.
5. Pengjuian signifikasi pada model pengukuran dan reliabilitas
6. Pengujian signifikansi model struktural / pengaruh antar variabel laten
7. Pengujian kebaikan model secara serentak atau overall goodness of fit

# Moderating Structural Equation Modeling (MSEM) - Metode Interaksi
MSEM merupakan pengembangan dari model regresi dengan variabel moderasi, yang mana dalam regresi moderating bertujuan untuk menguji apakah variabel moderasi yang digunakan atau dihipotesiskan dapat mempengaruhi pengaruh variabel independen terhadap variabel dependen. Secara diagram jalus ilustrasi regresi moderating adalah sebagai berikut :
![image](https://user-images.githubusercontent.com/36166387/81020778-cbdfcd00-8e93-11ea-8620-e8913d4e91c2.png)
Pada diagram jalur diatas (tahap 1) diharapkan bahwa variabel moderasi signifikan berpengaruh terlebih dahulu, sebelum dilakukan pengujian pada tahap 2 untuk membuktikan apakah variabel moderasi yang digunakan atau dihipotesiskan dapat mempengaruhi pengaruh variabel independen terhadap variabel dependen. Jadi pada kasus moderating, fokus pengujian terhadap hipotesis yang dibangun ditekankan untuk menguji dan membuktikan secara empirik apakah variabel moderasi yang digunakan atau dihipotesiskan dapat mempengaruhi pengaruh variabel independen terhadap variabel dependen. Dari uraian diatas maka yang dikatakan bahwa MSEM adalah pengujian signifikansi variabel laten yang berperan sebagai moderasi, jadi digunakan untuk membuktikan secara empirik apakah variabel laten yang berperan sebagai variabel moderasi tersebut dapat mempengaruhi pengaruh variabel laten eksogen terhadap variabel laten endogen. Sehingga diagram jalur atau path diagram MSEM dapat diilustrasikan sebagai berikut :

![image](https://user-images.githubusercontent.com/36166387/81025139-e0c25d80-8e9f-11ea-8e3a-8e2860ca5f7d.png)
![image](https://user-images.githubusercontent.com/36166387/81024964-54b03600-8e9f-11ea-9d7b-cc268d5dfa22.png)

Tahapan MSEM
1. Melakukan analisis SEM dengan hipotesis variabel laten X dan variabel laten M berpengaruh signifikan terhadap variabel laten Y.Dan pada kasus ini diharapkan variabel laten M berpengaruh signifikan tehadap variabel laten Y.
2. Membentuk variabel laten baru yang bernama variabel laten interaksi, dimana indikatornya berasal dari hasil perkalian indikator variabel laten X dengan indikator variabel laten M.
3. Melakukan analisis SEM dengan melibatkan variabel laten X, variabel laten M dan variabel laten interaksi terhadap variabel laten Y.
4. Interpretasikan apakah variabel laten interaksi berpengaruh signifikan terhadap variabel laten Y, jika berpengaruh signifikan maka dapat dikatakan bahwa variabel laten moderasi M berpengaruh signifikan dalam memoderasi pengaruh variabel laten X terhadap variabel laten Y.
