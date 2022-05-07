import 'package:app1/constants.dart';
import 'package:app1/screens/details/components/details_body.dart';
import 'package:flutter/material.dart';

import '../../top_right_icon.dart';
import 'components/details_bottom.dart';
import 'components/laptop_details.dart';

class DetailsScreen2 extends StatelessWidget {
  const DetailsScreen2({Key? key}) : super(key: key);

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
              image: "assets/images/msi1.jpg",
              title: "Katana\n",
              brand: "MSI",
              price: 17000,
            ),
            DetailLaptop(
              descripton:
                  'En yeni 11.nesil Intel® Core™ i7 CPU ve NVIDIA® GeForce RTX™ 30 serisi grafiklerle donatılan Katana GF76 , oyun sırasında gerçek performansını ortaya çıkaracak şekilde optimize edildi. Yeni Katana GF76, çelik kılıçların dövüldüğü gibi özenli ve güçlü bir işçiliğe sahip. Optimal performansla çalışın, savaş alanında pırıl pırıl parlayın!\n\nEski zamanlarda, içinde ejderha ruhu barındıran efsanevi kılıçların varlığına inanılırdı. “Dragon Blade”, Ejder Klanı tarafından dövülen ve hiçbir silahın gücüne yaklaşamadığı bir kılıç. Her savruluşu kasırga gücünde inanılmaz bir rüzgar estiriyor ve her vuruşu gökyüzünde öfke dolu bir fırtına oluşturuyor. Onu kaldırın ve ejderhalardan gelen gücüyle savaşa girin, oyunda yepyeni zirvelere erişin!\n\nEn yeni 11.nesil Intel® Core™ i7 işlemcisi ile önceki nesile göre %40’a varan performans artışı sunar. 4.6GHz çift çekirdek turbo frekansı ile bu 8 çekirdekli işlemci oyunda, üretkenlikte ve multitasking gerektiren işlerinizde maksimum verimliliğe sahiptir.\n\nResizable BAR, işlemcinizin GPU çerçeve belleğinin tamamına tek seferde erişerek performansını arttırmasını sağlayan gelişmiş bir PCI Express özelliğidir.\n\nOyun grafiklerinde en önemli özelliklerden biri kabul edilen Ray tracing teknolojisi, ışığın fiziksel davranışını taklit eden ve görsel anlamda en yoğun oyunlarda bile sinema sahneleri kalitesinde görüntüleri gerçek zamanlı olarak oluşturabilen bir yöntemdir.\n\nNVIDIA DLSS, FPS değerlerini benzeri görülmemiş bir görüntü kalitesi ile sunmak için GeForce RTX üzerindeki adanmış AI Tensor çekirdeklerini kullanır. Bu sayede inanılmaz bir görsel deneyim için ihtiyacınız olan performans potansiyeline sahip olursunuz. Yapay Zeka devrimi artık oyunda da hissediliyor.\n\nÖzel kırmızı ışıklandırma ve sağlam metal koruma ile tasarlanan bu klavye, 1.7mm tuş mesafesi ile çok daha hızlı tepki ve taktik geribildirim sunuyor. Yeni ergonomik tasarımı sayesinde oyuncuların tüm ihtiyaçlarına cevap verecek.',
              ekranboyutu: '17.3' '',
              garanti: '24',
              hafiza: '1TB SSD',
              ram: '16 GB',
              ekrankarti: 'Nvidia GeForce RTX 3060',
              islemci: 'Intel Core i7 11800H',
            ),
          ],
        ),
      ),
    );
  }
}
