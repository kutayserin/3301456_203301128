import 'package:app1/components/bottom_nav_bar.dart';
import 'package:app1/constants.dart';
import 'package:app1/screens/details/components/details_body.dart';
import 'package:flutter/material.dart';

import 'components/details_bottom.dart';

class DetailsScreen3 extends StatelessWidget {
  const DetailsScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBar: DetailsBottom(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailBody(
              image: "assets/images/casper1.jpg",
              title: "Excalibur\n",
              country: "Casper",
              price: 14750,
            ),
            DetailLaptop(
              descripton:
                  "Performans beklentilerine en uygun oyun bilgisayarını oluşturman için yüzlerce konfigürasyon imkanı Excalibur G770'de seçimini bekliyor. En güncel ekran kartı, işlemci, lisans,bellek, depolama ve ekran seçeneklerinden dilediğini seç, sana özel performans ile rakiplerinin önüne geç!\n\nPerformansın en estetik hali karşınızda, özel alüminyum alaşımdan tasarlanan Excalibur G770 ile performansdan ödün vermeden şık tasarıma da sahip olabilirsiniz. Hem daha dayanıklı hem de daha şık!\n\nExcalibur G770 oyun bilgisayarında 60 Hz ve 144 Hz değerinde iki farklı ekran arasından tercih yapabilir, yenilenme hızında üstün performansı ve en canlı renkleri deneyimleyebilirsin. Oyunda sadece 1 saniye kazananı belirlediğinde, ultra hızlı ekranın ile zafer her zaman senin..\n\nAkıllı turbo termal sistemler, Excalibur G770'in soğutma sisteminin gücünü otomatik olarak artırır, en yüksek performansta dahi takılma veya yavaşlamayı engeller. 82 fan yaprağına sahip yeni soğutma tasarımı ile sıcak havanın tahliyesini ve soğuk havanın içeriye alınması çok daha hızlı ve kolay şekilde gerçekleşir.\n\nOyuncuların vazgeçilmezi, RGB klavyesiz bir oyun bilgisayarı düşünülemez! Saatler boyu heyecanını kaybetmeden oynaman için Excalibur G770'de, RGB klavyenin büyülü renkleri seninle. Binlerce renk arasından moduna göre olanı seç ve oyunun keyfini çıkar.\n\nYeni yapay zeka destekli Dynamic Boost 2.0, güçlü performans artışı için gerekli gücü GPU, GPU bellek ve CPU arasında otomatik olarak iletir. Dynamic Boost 2.0 yapay zeka ağları, gücü her kare için ayrı ayrı yönetiyor. Bu şekilde dizüstü bilgisayarınız oyun sırasında ya da içerik oluştururken en yüksek performans için sürekli optimize edilir.\n\nBir önceki nesile göre %25'e varan performans artışları sunan Intel'in en yeni nesil Tigerlake-H işlemcileri kullanıldı. Hem de artık i7 modeller 8 çekirdek ve i5 modeller ise 6 çekirdekli yapısı ile çok daha yüksek performans sunar.\n\nExcalibur G770'in akıllı hoparlörleri Dolby Digital ses sistemi ile oyunun atmosferini eksiksiz yaşamanı sağlıyor. Oyun oynarken, müzik dinlerken veya film izlerken, en yüksek ses seviyelerinde bile kaliteli ve berrak ses seni bekliyor.\n\nEn yeni 3200MHZ hıza sahip bellekler ile performansa güç katın. Çift(dual) slot desteği ile maksimum 64GB'a kadar arttırabilirsin. \n\nSadece 5.5 mm inceliğe sahip çerçevesiyle Excalibur G770'de detaylar başrolde. 17.3'' ekran boyutunun görsel genişliğine yakın bir deneyimi, 15.6 ekran boyutunun kolaylıklarıyla bir arada.",
              ekranboyutu: '16.6' '',
              garanti: '24',
              hafiza: '500 GB',
              ekrankarti: 'Nvidia GeForce RTX 3050 Ti',
              islemci: 'Intel Core i5 11400H',
              ram: '8 GB',
            ),
          ],
        ),
      ),
    );
  }
}
