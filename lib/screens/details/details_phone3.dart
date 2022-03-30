import 'package:app1/components/bottom_nav_bar.dart';
import 'package:app1/constants.dart';
import 'package:app1/screens/details/components/details_body.dart';
import 'package:flutter/material.dart';

import 'components/details_bottom.dart';

class DetailsPhone3 extends StatelessWidget {
  const DetailsPhone3({Key? key}) : super(key: key);

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
              image: 'assets/images/redmi.jpg',
              title: "Redmi Note 10 Pro\n",
              country: "Xiaomi",
              price: 6000,
            ),
            DetailPhone(
              description:
                  'Xiaomi Redmi Note 10 Pro 128 GB 8 GB RAM akıllı telefon modeli hem tasarımı hem de teknik özellikleri ile kullanıcılardan övgüler topluyor. Bellek kapasitesi ile hızlı ve etkili kullanım sunması bir yana, tüm temel donanım öğelerinin birbiriyle uyumu neticesinde yüksek performans da sağlıyor. Cihazın ekran özellikleri, batarya kapasitesi, kamera donanımı, bağlantı çeşitliliği kullanım konforunuzu doğrudan artırıyor. Xiaomi akıllı telefon modelinin ayrıca IPX standardına sahip toza ve suya dayanıklılık özelliği de bulunuyor. Marka teknolojilerinden, servis ve uygulamalarından beslenen cihaz, kendi segmentindeki akıllı telefon markaları ve modelleri içerisinde öne çıkmayı başarıyor. Eğlence, iş ve gündelik kullanım beklentilerinizi iyi derece karşılamaya aday olan ürün, fiyat-performans anlamında avantajlı olması ile de adından bahsettiriyor.\n\nXiaomi Redmi Note 10 Pro 128 GB 8 GB RAM ekran özellikleri ile size keyifli bir kullanıcı deneyimi sunuyor. 1080x2400p FHD+ çözünürlüklü ekranda 395 PPI piksel yoğunluğu, DCI-P3 renk uzayı, 16 milyon renk gamı, 4500000:1 kontrast oranı yer alıyor. Böylece imajların renk doğruluğu maksimum seviyede seyrediyor. 450 nit parlaklık 700 nit parlaklık ve maksimum 1200 nit parlaklık özellikleri sayesinde yoğun aydınlık ortamlarda dahi ekranı rahatlıkla görmeniz mümkün oluyor. Metrekare başına düşen yüksek parlaklık nitsine ek olarak AMOLED ekran teknolojisi de kaliteli görüntüleme olanağı sunuyor. Arka aydınlatma kullanılmayan AMOLED, farklı açılardan ekrana baktığınızda meydana gelebilen renk değişimi ve kararma türevi problemleri de ortadan kaldırıyor. Cihaz, 6.67 inçlik ekran boyutu ile geliyor. Xiaomi Redmi Note 10 Pro 128 GB 8 GB RAM ekran boyutu, yüksek dokunmatik hassasiyete sahip geniş ekranda çalışma ayrıcalığını size ulaştırıyor. Ürünün önemli bir diğer ekran özelliği ise yüksek yenileme hızı oluyor. Akıllı telefonda 120 Hertz yenileme hızına ek olarak, 240 Hertz ekran tepki süresi yer alıyor. Yenileme hızı, ekranın saniye başına güncellenme sayısını belirtirken, tepki süresi piksellerin renk değişim hızını ifade ediyor. Bu değerlerin yüksekliği görüntüleme kalitesini doğrudan artırıyor. Böylece, aksiyon türünde oyun oynarken ya da film izlerken dahi renk değişimi, bulanıklık ve piksel kaybı gibi sorunlar yaşanmıyor. Xiaomi Redmi serisi cihazın tüm bu ekran özellikleri, görüntülerin son derece net ve gerçekçi biçimde izlenmesini sağlıyor.\n\nXiaomi Redmi Note akıllı telefon serisinde yer alan Pro model ürün, donanım nitelikleri ile konforlu kullanım standartlarınızı yükseltiyor. Qualcomm Snapdragon 732G yonga setini kullanan üründe 2x 2.3 GHz ARM Cortex-A76 Kryo 470 ana işlemci ve 6x1.8 GHz ARM Cortex-A55 birinci yardımcı işlemci yer alıyor. Verileri algılayarak yorumlayan ve uygulayan işlemci birimine 800 MHz frekanslı Adreno 618 GPU grafik işlemci eşlik ediyor. İşlemcinin uygulayacağı komut bilgilerinin yer aldığı LPDDR4x tipindeki RAM ise 8 GB kapasitesi ile yüksek bir bellek alanı sağlıyor. Xiaomi Redmi Note 10 Pro 128 GB 8 GB RAM hafıza birimi hem işlem datalarının rahatlıkla depolanmasında hem de işlemlerin yavaşlama olmaksızın yapılabilmesinde etkili oluyor. Düşük belleğin sebep olabileceği sistem yükü oluşumu böylece önleniyor. Verilerin kaydedildiği dahili depolama alanı ise 128 GB kapasiteye sahip. Xiaomi Redmi Note 10 Pro 128 GB 8 GB RAM bellek oyun oynarken, görseller üzerinde çalışmalar yaparken, uygulama indirip kullanırken donma, ısınma, yavaşlama sorunları yaşamamanızı sağlıyor. UFS 2.2 dahili depolama biçimini destekleyen üründe 512 GB’a kadar artırılabilir hafıza da yer alıyor. Böylece verileri cihazda saklamanız mümkün oluyor. 8 çekirdekli Xiaomi telefon, çoklu görevlerde problem yaşamanızı da önlüyor. Yüksek işlemci çekirdeği sayesinde, takılma olmaksızın internet sekmeleri arasında gezinebilir, çoklu görevleri çalıştırabilir, farklı uygulamalar arasında hızlı geçişler yapabilirsiniz.',
              ekranboyutu: '6.67' '',
              garanti: '24',
              hafiza: "128 GB",
              kamera: '108 MP + 8 MP + 5 MP + 2 MP',
              pil: '5020 mAh',
              ram: '8 GB RAM',
            ),
          ],
        ),
      ),
    );
  }
}
