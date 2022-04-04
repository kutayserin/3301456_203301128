import 'package:app1/constants.dart';
import 'package:app1/screens/details/components/details_body.dart';
import 'package:flutter/material.dart';

import 'components/details_bottom.dart';
import 'components/tv_details.dart';

class Detailstv1 extends StatelessWidget {
  const Detailstv1({Key? key}) : super(key: key);

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
              image: "assets/images/samsungtv.jpg",
              title: "Samsung 55Q70A\n",
              brand: "Samsung",
              price: 13600,
            ),
            DetailTv(
              description:
                  '4K Quantum İşlemci mükemmel performans, akıllı görüntü, ses optimizasyonu ve çok daha fazlasını sunarak her alanda sizi nefes kesen gerçek bir deneyime sürükler.\n\nQuantum HDR, ayrıntıları ve kontrastı ortaya çıkarır ve böylece her görüntüde kusursuz bir deneyim yaşarsınız. En ileri standartların ötesine geçen HDR10+’ın dinamik ton eşleştirme ile daha derin siyah renkler, daha canlı görüntüler ve her zaman parlayan ayrıntılar yaratır.\n\nGeniş İzleme Açısı daha geniş bir açıdan daha az renk kaybıyla muhteşem renkleri görebilmenizi sağlar. Yandan izlerken bile her zaman tüm görüntüyü görebilirsiniz.\n\nAyarlar menüsüne girip herhangi bir ayar yapmadan mükemmel resimleri deneyimleyebilirsiniz, çünkü ekranın parlaklık ve kontrastı izleme koşuluna ve izlediğiniz içeriğe göre otomatik olarak değişir.\n\nBırakın, TV ve soundbar’ın uyum içindeki sesleri sizi çepeçevre sarsın. Q-Symphony’nin benzersiz teknolojisi, daha iyi saran ses efekti sağlamak için TV hoparlörlerinin sesini kısmadan TV ve soundbar hoparlörlerinin aynı anda çalışmasını sağlar.',
              piksel: '3840 x 2160',
              cozunurluk: '4K Ultra HD',
              uydualici: 'Var',
              ekranformati: '16:9',
              garanti: '24',
              ekranebati: '55 inç / 139 cm',
            ),
          ],
        ),
      ),
    );
  }
}
