import 'package:app1/constants.dart';
import 'package:app1/screens/details/components/details_body.dart';
import 'package:flutter/material.dart';

import '../../top_right_icon.dart';
import 'components/details_bottom.dart';
import 'components/tv_details.dart';

class Detailstv3 extends StatelessWidget {
  const Detailstv3({Key? key}) : super(key: key);

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
              image: "assets/images/vesteltv.jpg",
              title: "Vestel 43F9510\n",
              brand: "Vestel",
              price: 4946,
            ),
            DetailTv(
              cozunurluk: 'Full HD',
              description:
                  "Günümüzde smart TV’ler akıllı özellikleri, internet bağlantıları, görüntü ve ses kaliteleriyle bir televizyondan çok daha fazlasını ifade ediyor. Gelişen teknolojiler sayesinde farklı televizyon modellerine imza atan Vestel markası, kaliteyi ve tasarımı ön planda tutarak ürettiği full HD LED TV modelleriyle adından sıklıkla söz ettiriyor. Vestel smart TV, kullanıcılarına konfor sunan özellikleri sayesinde oldukça fazla beğeniliyor. Hayat kolaylaştıran teknolojileri ile dikkatleri üzerine çeken Vestel 43F9510 43'' 108 Ekran Uydu Alıcılı Full HD Smart LED TV fiyatı, Wi-Fi ve uydu alıcı özellikleri, ekran boyutları, kaliteli ve şık tasarımı ile smart TV tavsiyelerinde ön plana çıkıyor.\n\nAkıllı teknolojilerle donatılan Vestel 108 ekran uydu alıcılı full HD özellikleri, kullanıcılarını memnun etmeyi başarıyor. Fonksiyonel özellikleri sayesinde bilgisayar monitörü, oyun bilgisayarı, sinema ekranı gibi kullanılabilen smart TV, teknoloji meraklılarının vazgeçilmezleri arasında yer alıyor. Uyduya veya antene ihtiyaç duymadan sayısız TV program kanalını evinize getiriyor. Wi-Fi teknolojisi sayesinde kullanıcılarına internette gezinme, dijital film içeriklerine erişim sağlama, oyun oynama gibi imkânlar tanıyor. İnternetten ulaşılan veya kayıtlı multimedya içeriklerini yüksek kalitede ekrana yansıtan Vestel 43F9510 TV, seyir keyfini ileri bir seviyeye çıkarıyor. , gibi dijital platformlar televizyonda kayıtlı olarak yer alıyor. Sinema ayrıcalığını evlere getiren konforu sayesinde ilgiyle takip ettiğiniz içeriklere Vestel smart TV ile erişim kolaylığı sağlanıyor. Ayrıca DTS ses sistemiyle sinema salonlarında olduğu gibi güçlü ve net seslere ulaşmak mümkün. Vestel 43F9510 full HD, 48 Hertz ses hızına kadar ulaşabilen ses mekanizması ile gerçekçi ses deneyimi sunar.\n\nTablet, telefon, bilgisayar gibi akıllı cihazlarla uyum içerisinde çalışan Vestel smart TV, kullanıcı dostu özellikleriyle televizyondan alınan performansı artırıyor. Veri paylaşımını kolaylaştıran bluetooth teknolojisi sayesinde akıllı cihazlardaki fotoğraf, video ve müzik dosyalarını televizyon ekranından takip etmenize imkân tanır. Böylelikle farklı multimedya içeriklerini daha net ve büyük boyutlarda görüntüleyebilirsiniz. Tabletlere veya akıllı telefonlara indirilebilen Vestel Smart Center uygulaması ile Vestel full HD televizyonu evinizdeki diğer akıllı cihazlardan kontrol etmek mümkün. Bu sayede televizyona içerik aktarımını kolaylıkla yapabileceğiniz gibi televizyonda bulunan dosyaları da akıllı cihazınız ile paylaşabilirsiniz. Ayrıca Vestel Smart Center uygulaması bulunan cihazları kumanda yerine de kullanabilirsiniz.\n\nGörüntü netliği konusunda standart televizyon modellerinin önüne geçen Vestel smart LED TV, patentli Pixellence özelliği sayesinde içeriklerin en ince ayrıntısına kadar net ve kaliteli bir şekilde görüntülenmesini sağlar. 1920x1080 piksel çözünürlüğünün yanı sıra kontrast iyileştirme ve renk iyileştirme teknolojilerine sahip akıllı televizyon, kullanıcılarına üstün görüntü çözünürlüğü ve mükemmel renk deneyimi sunar. Gerçeklik algısı üzerinde etkili olan canlı renk ayarları ile sizi izlediğiniz bir internet içeriğinin ya da TV programının içine çeker. Ayrıca modern tasarımıyla da ön planda olan Vestel TV, 108 ekran 43 inç boyutları ve ince görüntüsüyle oturma alanlarınızda hoş bir görüntü oluşturur. İnternet ve televizyon içeriklerini büyük ekrandan izlemenize olanak tanıyan tasarımı, Vestel uydu alıcılı HD LED TV’yi ayrıcalıklı hale getiriyor. Siyah ince çerçeve şeritleriyle şık bir görünüm sunan smart TV, her türden mobilya dekorasyonuna uyum sağlar. Vestel TV ile herhangi bir uyduya veya antene gerek kalmadan televizyon kanallarına televizyon kanallarına erişebildiği gibi internet bağlantısı için de ek bir kabloya ihtiyaç duyulmaz. Bu sayede televizyon arkasında dekorasyonu olumsuz anlamda etkileyecek kablo fazlalığı engellenmiş olur.",
              ekranebati: '43 inç / 108 cm',
              ekranformati: '16:9',
              garanti: '36',
              piksel: '1920 x 1080',
              uydualici: 'Var',
            ),
          ],
        ),
      ),
    );
  }
}
