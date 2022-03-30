import 'package:app1/components/bottom_nav_bar.dart';
import 'package:app1/constants.dart';
import 'package:app1/screens/details/components/details_body.dart';
import 'package:flutter/material.dart';
import 'components/details_bottom.dart';

class DetailsPhone1 extends StatelessWidget {
  const DetailsPhone1({Key? key}) : super(key: key);

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
              image: 'assets/images/samsungphone.jpg',
              title: "Samsung Galaxy 22\n",
              marka: "Samsung",
              price: 13000,
            ),
            DetailPhone(
                description:
                    'Qualcomm’un Snapdragon 8 Gen 1 işlemcisi üzerine kurulu olan cihaz, performans konusunda kullanıcılarını memnun eden sonuçlar ortaya çıkarır. Ekranlar arasında gezinmek veya uygulamaları başlatmak gibi günlük görevler, üst düzey bir telefondan beklenebileceği kadar hızlıdır. Yenilenme hızının 120 Hz’e kadar yükselebilmesi, telefonun performans konusunda ortaya koyduğu etkileyici sonuçlar arasında yer alır. Ana işlemcisinde bir tane 3.0 Ghz ARM Cortex-X2 çekirdek bulunan cihazda üçü 2.5 GHz ve dördü 1.8 GHz olmak üzere toplam sekiz tane çekirdek bulunur. Yardımcı çekirdekler, ana işlemciyi başarılı bir şekilde desteklediği için hız konusunda kullanıcılarını memnun eden bir performansa imza atar. Aynı zamanda Samsung Galaxy S22 5G 128 GB (Samsung Türkiye Garantili) RAM kapasitesiyle de performansını bir üst seviyeye taşıyarak hızını artırır. 8 GB dahili bellek hafızası, programlar arasında akıcı bir şekilde geçiş yapılmasına imkan tanır. Aynı zamanda Adreno grafik işlemcisi, telefonun görsel deneyimini bir üst seviyeye taşıyarak oyun oynamayı seven kişilerin gereksinimlerini karşılamayı başarır.\n\nSamsung Galaxy S22 5G 128 GB (Samsung Türkiye Garantili) dahili hafıza konusunda da alan problemi yaşayan kullanıcıların ihtiyaçlarını hedef alır. Böylece istenilen işlemlerin hafıza problemi yaşanmadan kolaylıkla gerçekleştirilmesine imkan tanır. 3700 mAh batarya kapasitesine sahip olan telefonun günlük kullanımda sunduğu pil ömrü de üst seviye bir cihaz olduğunu kanıtlar niteliktedir. Ayrıca 25W hızlı şarj gücü sayesinde kısa süre içinde günlük hayattaki işlemlerin rahat bir şekilde gerçekleştirilebileceği pil seviyesine ulaşır. Özellikle acil durumlarda kullanışlı hale gelen hızlı şarj özelliğiyle sınıfının kıymetli cihazları arasında yer almayı başarır. Ek olarak 15W kablosuz hızlı şarj desteği sunduğu için de dışarıda olduğunuzda telefonun şarjını dilediğiniz seviyeye çıkarmanıza yardımcı olur. Pusula ve Hall sensörü gibi cihazların işlevselliğini artıran özellikleri içerdiği için de her açıdan kullanıcı deneyimini iyileştirir. Telefonunuzun donanımı sizin için önemli bir kriterse Samsung S22 modelinde istediğiniz çoğu özelliği bulabilirsiniz.',
                ekranboyutu: '6,1 inç',
                garanti: '24',
                hafiza: '128 GB',
                kamera: '50 MP + 10 MP + 12 MP',
                pil: '3700 mAh',
                ram: '8 GB RAM'),
          ],
        ),
      ),
    );
  }
}
