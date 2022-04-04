import 'package:app1/constants.dart';
import 'package:app1/screens/details/components/details_body.dart';
import 'package:flutter/material.dart';

import 'components/details_bottom.dart';
import 'components/laptop_details.dart';

class DetailsScreen1 extends StatelessWidget {
  const DetailsScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: qPrimaryColor,
      ),
      bottomNavigationBar: DetailsBottom(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailBody(
              image: 'assets/images/lenovo1.jpg',
              title: "IdeaPad 3\n",
              brand: "Lenovo",
              price: 14000,
            ),
            DetailLaptop(
              descripton:
                  "Size liderlik tablosunun tepesine tırmanma olanağı sağlayan bir dizüstü bilgisayarla e-spor deneyiminizi geliştirin ve noob'ları geride bırakın. IdeaPad Gaming 3 (15), AMD Ryzen™ işlemciler, GeForce® grafikler, DDR4 bellek ve SSD depolama seçenekleriyle rekabetçi oyun oynamaya açılan kapınızdır.\n\nEn sevdiğiniz AAA oyunlarınızı, AMD Ryzen™ 4000 H-Serisi işlemciler, NVIDIA ile keyfini çıkarması gerektiği gibi sorunsuzca çalıştırınGeForceGTX grafik, DDR4 bellek ve M.2 NVMe PCIe SSD depolama seçenekleri. Bu güçlü özellikler, oyunları yüksek ayarlarda çalıştırabilmenizi sağlar, böylece oyun ortamınızdaki her ayrıntıyı her zaman görme avantajına sahip olursunuz.\n\nIdeaPad Gaming 3 dizüstü bilgisayar, hızlı refleksleri barındıran bir ekranla zaferi sunar. 120 Hz'e kadar yenileme hızına sahip 15,6 ''FHD ekran, görselleri net ve yırtılmadan tutar, böylece birden fazla oyun içi hedefi edinebilir ve bir efsane gibi öldürme serilerini artırabilirsiniz. Ayrıca bir HDMI 2.0 bağlantı noktasıyla, bir ekstra tam deneyimi elde etmek için monitör veya TV.\n\nSizi şanlı zafer için ayarlayan kontrollerle kokpite atlayın. IdeaPad Gaming 3'ün geniş klavyesi, en üst düzeyde kontrol için 1,5 mm tuş hareketi ve her türlü aydınlatma durumunda önemli görünürlüğe yardımcı olmak için mavi arka aydınlatma ile oyuncular için tasarlanmıştır.",
              ekranboyutu: '15.6' ' ',
              ekrankarti: 'Nvidia GeForce RTX 3050',
              garanti: '24',
              hafiza: '1TB SSD',
              islemci: 'Intel Core i7 11370H',
              ram: '8 GB RAM',
            ),
          ],
        ),
      ),
    );
  }
}
