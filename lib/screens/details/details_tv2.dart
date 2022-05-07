import 'package:app1/constants.dart';
import 'package:app1/screens/details/components/details_body.dart';
import 'package:app1/top_right_icon.dart';
import 'package:flutter/material.dart';

import 'components/details_bottom.dart';
import 'components/tv_details.dart';

class Detailstv2 extends StatelessWidget {
  const Detailstv2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: qPrimaryColor,
        actions: [TopRightIcon()],
      ),
      bottomNavigationBar: DetailsBottom(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailBody(
              image: "assets/images/lgtv.jpg",
              title: "LG OLED55B16LA\n",
              brand: "LG",
              price: 15998,
            ),
            DetailTv(
              cozunurluk: '4K Ultra HD',
              description:
                  "Kendinden aydınlatmalı pikseller ile mümkün olan kusursuz OLED siyahı diğerleriyle karşılaştırılmayacak çarpıcı kontrastı yaratır. Ortaya çıkan kontrast, sinematik deneyim için tüm renklere derinlik katar ve detayları ortaya çıkarır.\n\nArkadan aydınlatmalı LED ve Mini LED TVler ekranda renkleri göstermek için bir filtreden ışık geçirir, bu da görüntüde bozulmaya sebep olabilir. LG OLED TV, kendinden aydınlatmalı pikselleri ile herhangi bir bozulma olmadan en canlı siyah ve renklerle birlikte sonsuz kontrast sağlar. Bu sayede bir gökyüzü sahnesinde en ufak yıldızları bile net olarak görebilirsiniz.\n\nLG OLED ekranların %100 renk doğruluğuna sahip olduğu uluslararası test ajanslarından Intertek tarafından onaylandı. Bu, ekranda gördüğünüz renklerin orijinal görüntünün renklerine çok yakın olduğu anlamına gelir. Böylece izlediğiniz her şey, içerik yaratıcısının istediği gibi görünür.\n\nRenk Doğruluğu testleri, orijinal bir görüntünün rengi ile bir ekran tarafından gösterilen renk arasındaki farkı belirler. Testte örnek renkler çıkarılmış ve kullanılmıştır. Sonuçlar, LG OLED ekranlarda gösterilen örnek renklerin %100ünün orijinal renklerle yakından eşleştiğini doğrulamıştır. LED ekranlarda gösterilen örnek renklerin yalnızca %70-80i orijinal renklerle yakından eşleşmiştir.\n\nLG OLED TV'ler, yönetmenler tarafından görüntü kalitesi standardını belirleyen bir televizyon olarak kabul edilmeye devam ediyor. 72. Teknoloji ve Mühendislik Emmy Ödülleri’nde Hollywood Referans Ekranı ödülünün kazananı da olan LG OLED TV, üstün teknolojisi, kusursuz siyahı ve doğru renk üretimi ile Hollywood'un tercihi haline geliyor.\n\nNetflix, Apple TV ve Amazon Prime Video uygulamalarıyla favori içeriklerinizi en üstün kalitede deneyimleyin. En yeni filmler, diziler, belgeseller ve daha fazlasına tek bir tuşla erişin. Arkanıza yaslanın ve yeni nesil TV deneyiminin keyfini çıkarın.\n\nNetflix ve başlıca Hollywood stüdyolarının tercih ettiği, her bir sahne için gelişmiş renk doğruluğu ve kontrast sunan Dolby Vision formatını destekleyen LG OLED TV, yeni eklenen Dolby Vision IQ özelliği ile ortam ışığının tespit edilmesi ile en iyi görüntü kalitesini sağlamak için izlediğiniz içeriği ortam ışığına göre uyarlar. Dolby Atmos ise her nesnenin hareketini gerçekçi bir şekilde yakalar ve 360 surround ses performansı sunar. Dolby Vision IQ ve Atmos bir araya geldiğinde LG OLED TV'de sürükleyici bir sinema deneyimi yaşatır.",
              ekranebati: '55 inç / 139 cm',
              ekranformati: '16:9',
              garanti: '24',
              piksel: '3840 x 2160',
              uydualici: 'Var',
            ),
          ],
        ),
      ),
    );
  }
}
