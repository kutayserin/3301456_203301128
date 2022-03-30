import 'package:app1/components/bottom_nav_bar.dart';
import 'package:app1/constants.dart';
import 'package:app1/screens/details/components/details_body.dart';
import 'package:flutter/material.dart';
import 'components/details_bottom.dart';

class DetailsPhone2 extends StatelessWidget {
  const DetailsPhone2({Key? key}) : super(key: key);

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
              image: 'assets/images/iphone.jpg',
              title: "Iphone 12\n",
              country: "Apple",
              price: 15000,
            ),
            DetailPhone(
              description:
                  "Apple, düşmelere karşı dayanıklı olan ekran modelini iPhone 12 ile bir adım öteye taşıdı. iPhone 12 ekranı, Ceramic Shield adındaki kaplama düşmelere karşı 4 kat daha dayanıklı bir şekilde kullanıcıların beğenisine sunuluyor. Nano ölçekli ekran, çoğu metalden daha sert olan seramik kristallerin ekrana işlenmesiyle elde ediliyor. Anlatıldığı kadar kolay olmayan bu işlemi, Apple mühendislerinin geliştirdiği özel formü ile hem seramik sertliği üst düzeyde tutuluyor hem de ekranın optik açıdan şeffaf olması sağlanıyor. Apple ifadesiyle iPhone 12’de “diğer tüm telefon camlarından daha sağlam” olarak nitelendirilen bu ekranda, yuvarlak kenarlar yerine eski modellerin izini taşıyan köşeli tasarımın hakim olduğunu göreceksiniz. iPhone 12 kamera özellikleri ile ekran yapısının da tamamen değişmesini sağladı. Yine Apple ifadesiyle tüm zamanların en iyi ekranı olarak lanse edilen Super Retina XDR OLED ekrana sahip iPhone 12, 6.1 inç ekran boyutuyla iPhone 11’e göre daha ince bir ekrana sahip. LCD ekranda yaşanılan sorunlar, Super Retina XDR ekran ile ortadan kalkıyor. Geliştirilmiş bu ekran sayesinde, renkler daha parlak ve görüntü daha yüksek çözünürlüğe sahip. HDR içerik ve 2.000.000:1 kontrast oranıyla farkı siz de hisseceksiniz. Geliştirilmiş kamera ve video kayıt özellikleri Apple’ı adeta böyle bir ekrana geçiş yapmasını zorunlu kılmış gibi görünüyor. Ayrıca günlük kullanımda karşılaşılan ekran çizilmelerine karşı çift iyon değişimi olarak adlandırılan teknoloji ile iPhone 12 daha iyi bir koruma sağlıyor. 5 farklı renk seçeneği ile tanıtılan iPhone 12, Apple’ın yüksek standartlara sahip alüminyum çelik kasası ise yine bizleri yalnız bırakmıyor.\n\n12 MP iki kameraya sahip iPhone 12, çığır açan yenilikleriyle bizleri karşılıyor. Fotoğraf çekmek için ister güneşin en tepede olduğu anı isterseniz de güneşin batmasını bekleyin! iPhone 12, akıllı HDR3 teknolojisi ve gece modu ile nesnelerdeki ayrıntılara kadar sizlere bir görüntü kalitesi sunuyor. HDR3 (High Dynamic Range) teknolojisi yalnızca yüzleri değil, ortamları algılamak için de robotik öğrenme teknolojisinden yararlanıyor. Bu teknoloji, gerektiği anlarda netliği, rengi ve beyaz dengesini otomatik olarak ayarlayabiliyor.Karanlıktan korkmayın! iPhone 12 serisinde geliştirilmiş gece modunun hem geniş hem de ultra geniş kamerada olması %27 daha fazla ışık yakalamasını sağlıyor. Böylece günün herhangi bir saatinde aynı kaliteye yakın fotoğraflar çekebilme imkanına sahip oluyorsunuz. Gece moduna sahip ön kamera ile selfielerinizi karanlık ortamlarda bile rahat bir şekilde çekebilirsiniz. Ultra geniş açıya sahip 1.6 diyaframlı lens ile birlikte gece modu, ortam ışığının loş olup olmadığını algılayarak otomatik olarak devreye giriyor. Geliştirilen yeni kamera sayesinde hem renkler daha canlı yakalanıyor hem de yüksek netlike sağlanıyor. Bu netlikler sadece fotoğraf ve video için değil, herhangi bir metinde ya da maillerinizde de kendini gösteriyor. Bunun haricinde hepimizin bildiği portre modu ve doğal ışık ve stüdyo ışığı ile harika fotoğraflar çekebilirsiniz. iPhone 12, Deep Fusion özelliği ile farklı ışık pozlamalarını analiz ederek farklı yüzeyleri ayırt edebiliyor. Size de ultra geniş kameranın sunduğu farklı perspektiflerin tadını çıkarmak kalıyor. HDR desteği ile yüksek çözünürlük gibi iddialı yenilikler getiren iPhone 12, bu yenilikleri destekleyecek A14 Bionic işlemcisiyle trilyonlarca işlem yapabiliyor.\n\n Apple’ın tercih edilmesindeki en büyük etkenlerden biri olan işlemci kalitesi, iPhone 12’de A14 Bionic 5 nanometre çip ile karşımıza çıkıyor. Bu işlemci, dünyada ilk kez bir mobil cihazda kullanılıyor. Zaten hızlı olan Apple işlemcileri, A14 Bionic ile şimdi %50 daha hızlı şekilde bizlere kendini gösteriyor. Sürekli karşılaştığımız cihaz ısınması, yavaşlaması hatta donma problemlerini epey azaltan bu teknoloji, enerji verimliliğini artırmanın yanı sıra daha yüksek performans sergileyerek tüm ilgiyi şimdiden üzerine çekmiş durumda. Yukarıda bahsettiğimiz yeniliklerin uygulanabilir olması için çok güçlü bir işlemciye ihtiyaç duyulması kaçınılmazdı ve Apple, A14 Bionic ile dünyada bunu gerçekleştiren ilk firma oldu. 4 GB RAM kapasitesi ve iOS 14 işletim sistemine sahip iPhone 12 işlemcisi ile çok daha iyi fotoğraflar çekebilmesinin yanı sıra aynı anda birçok işlemi yapabilmenize olanak sağlıyor.",
              garanti: "24",
              hafiza: "128 GB",
              ekranboyutu: "6.1''",
              kamera: "12 MP + 12 MP",
              pil: "2815 mAh",
              ram: "4 GB RAM",
            )
          ],
        ),
      ),
    );
  }
}
