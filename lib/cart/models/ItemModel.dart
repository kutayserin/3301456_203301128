import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
/*
var data = [
  {
    "name": "Nike",
    "price": 25.0,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://rukminim1.flixcart.com/image/832/832/jao8uq80/shoe/3/r/q/sm323-9-sparx-white-original-imaezvxwmp6qz6tg.jpeg?q=70"
  },
  {
    "name": "Brasher Traveller Brasher Traveller ",
    "price": 200.0,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/merrell_0.jpg?itok=wFRPiIPw"
  },
  {
    "name": "Puma Descendant Ind",
    "price": 299.0,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://n4.sdlcdn.com/imgs/d/h/i/Asian-Gray-Running-Shoes-SDL691594953-1-2127d.jpg"
  },
  {
    "name": "Running Shoe Brooks Highly",
    "price": 3001.0,
    "fav": false,
    "rating": 3.5,
    "image":
        "https://cdn.pixabay.com/photo/2014/06/18/18/42/running-shoe-371625_960_720.jpg"
  },
  {
    "name": "Ugly Shoe Trends 2018",
    "price": 25.0,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://pixel.nymag.com/imgs/fashion/daily/2018/04/18/uglee-shoes/70-fila-disruptor.w710.h473.2x.jpg"
  },
  {
    "name": "Nordstrom",
    "price": 214.0,
    "fav": false,
    "rating": 4.0,
    "image":
        "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/9/_100313809.jpg?h=365&w=240&dpr=2&quality=45&fit=fill&fm=jpg"
  },
  {
    "name": "ShoeGuru",
    "price": 205.0,
    "fav": false,
    "rating": 4.0,
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc_R7jxbs8Mk2wjW9bG6H9JDbyEU_hRHmjhr3EYn-DYA99YU6zIw"
  },
  {
    "name": "Shoefly black",
    "price": 200.0,
    "fav": false,
    "rating": 4.9,
    "image":
        "https://rukminim1.flixcart.com/image/612/612/j95y4cw0/shoe/d/p/8/sho-black-303-9-shoefly-black-original-imaechtbjzqbhygf.jpeg?q=70"
  }
];
*/
/*
        "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/samsung/thumb/132703-1_large.jpg",
           "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-purple-select-2021?wid=470&hei=556&fmt=png-alpha&.v=1617130317000",
        "https://productimages.hepsiburada.net/s/73/550/110000014642171.jpg/format:webp",
        "https://productimages.hepsiburada.net/s/170/550/110000133549306.jpg/format:webp",
        "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/msi/thumb/123273_large.jpg",
        "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87054178/fee_786_587_png/CASPER-EXCALIBUR.G770.1140-8VJ0T-B-i5-11400H-8GB-Ram-500GB-NVMe-SSD-4GB-GTX-3050--15.6%22-FHD--Win10-Laptop-Metal-Siyah",
        "https://cdn.dsmcdn.com/mnresize/1200/1800/ty161/product/media/images/20210816/17/119082397/227669870/1/1_org_zoom.jpg",


*/

var data = [
  {
    "id": 1,
    "tip": "1",
    "name": "Samsung Galaxy 22",
    "price": 13000.0,
    "brand": "Samsung",
    "ekranboyutu": "6,1 inç",
    "garanti": "24",
    "hafiza": "128 GB",
    "kamera": "50 MP + 10 MP + 12 MP",
    "ekranebati": "",
    "cozunurluk": "",
    "ekranformati": "",
    "islemci": "",
    "piksel": "",
    "uydualici": "",
    "ekrankarti": "",
    "pil": "3700 mAh",
    "ram": "8 GB RAM",
    "description":
        "Qualcomm’un Snapdragon 8 Gen 1 işlemcisi üzerine kurulu olan cihaz, performans konusunda kullanıcılarını memnun eden sonuçlar ortaya çıkarır. Ekranlar arasında gezinmek veya uygulamaları başlatmak gibi günlük görevler, üst düzey bir telefondan beklenebileceği kadar hızlıdır. Yenilenme hızının 120 Hz’e kadar yükselebilmesi, telefonun performans konusunda ortaya koyduğu etkileyici sonuçlar arasında yer alır. Ana işlemcisinde bir tane 3.0 Ghz ARM Cortex-X2 çekirdek bulunan cihazda üçü 2.5 GHz ve dördü 1.8 GHz olmak üzere toplam sekiz tane çekirdek bulunur. Yardımcı çekirdekler, ana işlemciyi başarılı bir şekilde desteklediği için hız konusunda kullanıcılarını memnun eden bir performansa imza atar. Aynı zamanda Samsung Galaxy S22 5G 128 GB (Samsung Türkiye Garantili) RAM kapasitesiyle de performansını bir üst seviyeye taşıyarak hızını artırır. 8 GB dahili bellek hafızası, programlar arasında akıcı bir şekilde geçiş yapılmasına imkan tanır. Aynı zamanda Adreno grafik işlemcisi, telefonun görsel deneyimini bir üst seviyeye taşıyarak oyun oynamayı seven kişilerin gereksinimlerini karşılamayı başarır.\n\nSamsung Galaxy S22 5G 128 GB (Samsung Türkiye Garantili) dahili hafıza konusunda da alan problemi yaşayan kullanıcıların ihtiyaçlarını hedef alır. Böylece istenilen işlemlerin hafıza problemi yaşanmadan kolaylıkla gerçekleştirilmesine imkan tanır. 3700 mAh batarya kapasitesine sahip olan telefonun günlük kullanımda sunduğu pil ömrü de üst seviye bir cihaz olduğunu kanıtlar niteliktedir. Ayrıca 25W hızlı şarj gücü sayesinde kısa süre içinde günlük hayattaki işlemlerin rahat bir şekilde gerçekleştirilebileceği pil seviyesine ulaşır. Özellikle acil durumlarda kullanışlı hale gelen hızlı şarj özelliğiyle sınıfının kıymetli cihazları arasında yer almayı başarır. Ek olarak 15W kablosuz hızlı şarj desteği sunduğu için de dışarıda olduğunuzda telefonun şarjını dilediğiniz seviyeye çıkarmanıza yardımcı olur. Pusula ve Hall sensörü gibi cihazların işlevselliğini artıran özellikleri içerdiği için de her açıdan kullanıcı deneyimini iyileştirir. Telefonunuzun donanımı sizin için önemli bir kriterse Samsung S22 modelinde istediğiniz çoğu özelliği bulabilirsiniz.",
    "image":
        "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/samsung/thumb/132703-1_large.jpg",
    "image2":
        "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/samsung/thumb/132703-2_large.jpg",
    "image3":
        "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/samsung/thumb/132703-3_large.jpg",
  },
  {
    "id": 2,
    "tip": "1",
    "name": "Iphone 12",
    "price": 15000.0,
    "brand": "Apple",
    "garanti": "24",
    "hafiza": "128 GB",
    "ekranboyutu": "6.1 inç",
    "kamera": "12 MP + 12 MP",
    "ekranebati": "",
    "cozunurluk": "",
    "ekranformati": "",
    "islemci": "",
    "ekrankarti": "",
    "uydualici": "",
    "piksel": "",
    "pil": "2815 mAh",
    "ram": "4 GB RAM",
    "description":
        "Apple, düşmelere karşı dayanıklı olan ekran modelini iPhone 12 ile bir adım öteye taşıdı. iPhone 12 ekranı, Ceramic Shield adındaki kaplama düşmelere karşı 4 kat daha dayanıklı bir şekilde kullanıcıların beğenisine sunuluyor. Nano ölçekli ekran, çoğu metalden daha sert olan seramik kristallerin ekrana işlenmesiyle elde ediliyor. Anlatıldığı kadar kolay olmayan bu işlemi, Apple mühendislerinin geliştirdiği özel formü ile hem seramik sertliği üst düzeyde tutuluyor hem de ekranın optik açıdan şeffaf olması sağlanıyor. Apple ifadesiyle iPhone 12’de “diğer tüm telefon camlarından daha sağlam” olarak nitelendirilen bu ekranda, yuvarlak kenarlar yerine eski modellerin izini taşıyan köşeli tasarımın hakim olduğunu göreceksiniz. iPhone 12 kamera özellikleri ile ekran yapısının da tamamen değişmesini sağladı. Yine Apple ifadesiyle tüm zamanların en iyi ekranı olarak lanse edilen Super Retina XDR OLED ekrana sahip iPhone 12, 6.1 inç ekran boyutuyla iPhone 11’e göre daha ince bir ekrana sahip. LCD ekranda yaşanılan sorunlar, Super Retina XDR ekran ile ortadan kalkıyor. Geliştirilmiş bu ekran sayesinde, renkler daha parlak ve görüntü daha yüksek çözünürlüğe sahip. HDR içerik ve 2.000.000:1 kontrast oranıyla farkı siz de hisseceksiniz. Geliştirilmiş kamera ve video kayıt özellikleri Apple’ı adeta böyle bir ekrana geçiş yapmasını zorunlu kılmış gibi görünüyor. Ayrıca günlük kullanımda karşılaşılan ekran çizilmelerine karşı çift iyon değişimi olarak adlandırılan teknoloji ile iPhone 12 daha iyi bir koruma sağlıyor. 5 farklı renk seçeneği ile tanıtılan iPhone 12, Apple’ın yüksek standartlara sahip alüminyum çelik kasası ise yine bizleri yalnız bırakmıyor.\n\n12 MP iki kameraya sahip iPhone 12, çığır açan yenilikleriyle bizleri karşılıyor. Fotoğraf çekmek için ister güneşin en tepede olduğu anı isterseniz de güneşin batmasını bekleyin! iPhone 12, akıllı HDR3 teknolojisi ve gece modu ile nesnelerdeki ayrıntılara kadar sizlere bir görüntü kalitesi sunuyor. HDR3 (High Dynamic Range) teknolojisi yalnızca yüzleri değil, ortamları algılamak için de robotik öğrenme teknolojisinden yararlanıyor. Bu teknoloji, gerektiği anlarda netliği, rengi ve beyaz dengesini otomatik olarak ayarlayabiliyor.Karanlıktan korkmayın! iPhone 12 serisinde geliştirilmiş gece modunun hem geniş hem de ultra geniş kamerada olması %27 daha fazla ışık yakalamasını sağlıyor. Böylece günün herhangi bir saatinde aynı kaliteye yakın fotoğraflar çekebilme imkanına sahip oluyorsunuz. Gece moduna sahip ön kamera ile selfielerinizi karanlık ortamlarda bile rahat bir şekilde çekebilirsiniz. Ultra geniş açıya sahip 1.6 diyaframlı lens ile birlikte gece modu, ortam ışığının loş olup olmadığını algılayarak otomatik olarak devreye giriyor. Geliştirilen yeni kamera sayesinde hem renkler daha canlı yakalanıyor hem de yüksek netlike sağlanıyor. Bu netlikler sadece fotoğraf ve video için değil, herhangi bir metinde ya da maillerinizde de kendini gösteriyor. Bunun haricinde hepimizin bildiği portre modu ve doğal ışık ve stüdyo ışığı ile harika fotoğraflar çekebilirsiniz. iPhone 12, Deep Fusion özelliği ile farklı ışık pozlamalarını analiz ederek farklı yüzeyleri ayırt edebiliyor. Size de ultra geniş kameranın sunduğu farklı perspektiflerin tadını çıkarmak kalıyor. HDR desteği ile yüksek çözünürlük gibi iddialı yenilikler getiren iPhone 12, bu yenilikleri destekleyecek A14 Bionic işlemcisiyle trilyonlarca işlem yapabiliyor.\n\n Apple’ın tercih edilmesindeki en büyük etkenlerden biri olan işlemci kalitesi, iPhone 12’de A14 Bionic 5 nanometre çip ile karşımıza çıkıyor. Bu işlemci, dünyada ilk kez bir mobil cihazda kullanılıyor. Zaten hızlı olan Apple işlemcileri, A14 Bionic ile şimdi %50 daha hızlı şekilde bizlere kendini gösteriyor. Sürekli karşılaştığımız cihaz ısınması, yavaşlaması hatta donma problemlerini epey azaltan bu teknoloji, enerji verimliliğini artırmanın yanı sıra daha yüksek performans sergileyerek tüm ilgiyi şimdiden üzerine çekmiş durumda. Yukarıda bahsettiğimiz yeniliklerin uygulanabilir olması için çok güçlü bir işlemciye ihtiyaç duyulması kaçınılmazdı ve Apple, A14 Bionic ile dünyada bunu gerçekleştiren ilk firma oldu. 4 GB RAM kapasitesi ve iOS 14 işletim sistemine sahip iPhone 12 işlemcisi ile çok daha iyi fotoğraflar çekebilmesinin yanı sıra aynı anda birçok işlemi yapabilmenize olanak sağlıyor.",
    "image":
        "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-purple-select-2021?wid=470&hei=556&fmt=png-alpha&.v=1617130317000",
    "image2":
        "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/apple/thumb/122698-1_large.jpg",
    "image3":
        "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/apple/thumb/122698-2_large.jpg",
  },
  {
    "id": 3,
    "tip": "1",
    "name": "Redmi Note 10 Pro",
    "price": 6000.0,
    "brand": "Xiaomi",
    "ekranboyutu": "6.67 inç",
    "garanti": "24",
    "hafiza": "128 GB",
    "kamera": "108 MP + 8 MP + 5 MP + 2 MP",
    "ekranebati": "",
    "cozunurluk": "",
    "ekranformati": "",
    "islemci": "",
    "ekrankarti": "",
    "uydualici": "",
    "piksel": "",
    "pil": "5020 mAh",
    "ram": "8 GB RAM",
    "description":
        "Xiaomi Redmi Note 10 Pro 128 GB 8 GB RAM akıllı telefon modeli hem tasarımı hem de teknik özellikleri ile kullanıcılardan övgüler topluyor. Bellek kapasitesi ile hızlı ve etkili kullanım sunması bir yana, tüm temel donanım öğelerinin birbiriyle uyumu neticesinde yüksek performans da sağlıyor. Cihazın ekran özellikleri, batarya kapasitesi, kamera donanımı, bağlantı çeşitliliği kullanım konforunuzu doğrudan artırıyor. Xiaomi akıllı telefon modelinin ayrıca IPX standardına sahip toza ve suya dayanıklılık özelliği de bulunuyor. Marka teknolojilerinden, servis ve uygulamalarından beslenen cihaz, kendi segmentindeki akıllı telefon markaları ve modelleri içerisinde öne çıkmayı başarıyor. Eğlence, iş ve gündelik kullanım beklentilerinizi iyi derece karşılamaya aday olan ürün, fiyat-performans anlamında avantajlı olması ile de adından bahsettiriyor.\n\nXiaomi Redmi Note 10 Pro 128 GB 8 GB RAM ekran özellikleri ile size keyifli bir kullanıcı deneyimi sunuyor. 1080x2400p FHD+ çözünürlüklü ekranda 395 PPI piksel yoğunluğu, DCI-P3 renk uzayı, 16 milyon renk gamı, 4500000:1 kontrast oranı yer alıyor. Böylece imajların renk doğruluğu maksimum seviyede seyrediyor. 450 nit parlaklık 700 nit parlaklık ve maksimum 1200 nit parlaklık özellikleri sayesinde yoğun aydınlık ortamlarda dahi ekranı rahatlıkla görmeniz mümkün oluyor. Metrekare başına düşen yüksek parlaklık nitsine ek olarak AMOLED ekran teknolojisi de kaliteli görüntüleme olanağı sunuyor. Arka aydınlatma kullanılmayan AMOLED, farklı açılardan ekrana baktığınızda meydana gelebilen renk değişimi ve kararma türevi problemleri de ortadan kaldırıyor. Cihaz, 6.67 inçlik ekran boyutu ile geliyor. Xiaomi Redmi Note 10 Pro 128 GB 8 GB RAM ekran boyutu, yüksek dokunmatik hassasiyete sahip geniş ekranda çalışma ayrıcalığını size ulaştırıyor. Ürünün önemli bir diğer ekran özelliği ise yüksek yenileme hızı oluyor. Akıllı telefonda 120 Hertz yenileme hızına ek olarak, 240 Hertz ekran tepki süresi yer alıyor. Yenileme hızı, ekranın saniye başına güncellenme sayısını belirtirken, tepki süresi piksellerin renk değişim hızını ifade ediyor. Bu değerlerin yüksekliği görüntüleme kalitesini doğrudan artırıyor. Böylece, aksiyon türünde oyun oynarken ya da film izlerken dahi renk değişimi, bulanıklık ve piksel kaybı gibi sorunlar yaşanmıyor. Xiaomi Redmi serisi cihazın tüm bu ekran özellikleri, görüntülerin son derece net ve gerçekçi biçimde izlenmesini sağlıyor.\n\nXiaomi Redmi Note akıllı telefon serisinde yer alan Pro model ürün, donanım nitelikleri ile konforlu kullanım standartlarınızı yükseltiyor. Qualcomm Snapdragon 732G yonga setini kullanan üründe 2x 2.3 GHz ARM Cortex-A76 Kryo 470 ana işlemci ve 6x1.8 GHz ARM Cortex-A55 birinci yardımcı işlemci yer alıyor. Verileri algılayarak yorumlayan ve uygulayan işlemci birimine 800 MHz frekanslı Adreno 618 GPU grafik işlemci eşlik ediyor. İşlemcinin uygulayacağı komut bilgilerinin yer aldığı LPDDR4x tipindeki RAM ise 8 GB kapasitesi ile yüksek bir bellek alanı sağlıyor. Xiaomi Redmi Note 10 Pro 128 GB 8 GB RAM hafıza birimi hem işlem datalarının rahatlıkla depolanmasında hem de işlemlerin yavaşlama olmaksızın yapılabilmesinde etkili oluyor. Düşük belleğin sebep olabileceği sistem yükü oluşumu böylece önleniyor. Verilerin kaydedildiği dahili depolama alanı ise 128 GB kapasiteye sahip. Xiaomi Redmi Note 10 Pro 128 GB 8 GB RAM bellek oyun oynarken, görseller üzerinde çalışmalar yaparken, uygulama indirip kullanırken donma, ısınma, yavaşlama sorunları yaşamamanızı sağlıyor. UFS 2.2 dahili depolama biçimini destekleyen üründe 512 GB’a kadar artırılabilir hafıza da yer alıyor. Böylece verileri cihazda saklamanız mümkün oluyor. 8 çekirdekli Xiaomi telefon, çoklu görevlerde problem yaşamanızı da önlüyor. Yüksek işlemci çekirdeği sayesinde, takılma olmaksızın internet sekmeleri arasında gezinebilir, çoklu görevleri çalıştırabilir, farklı uygulamalar arasında hızlı geçişler yapabilirsiniz.",
    "image":
        "https://productimages.hepsiburada.net/s/73/550/110000014642168.jpg/format:webp",
    "image2":
        "https://productimages.hepsiburada.net/s/73/550/110000014642169.jpg/format:webp",
    "image3":
        "https://productimages.hepsiburada.net/s/73/550/110000014642170.jpg/format:webp",
  },
  {
    "id": 4,
    "tip": "2",
    "name": "IdeaPad 3",
    "price": 14000.0,
    "brand": "Lenovo",
    "ekranboyutu": "15.6 inç",
    "ekrankarti": "Nvidia GeForce RTX 3050",
    "ekranebati": "",
    "cozunurluk": "",
    "ekranformati": "",
    "uydualici": "",
    "kamera": "",
    "pil": "",
    "piksel": "",
    "garanti": "24",
    "hafiza": "1TB SSD",
    "islemci": "Intel Core i7 11370H",
    "ram": "8 GB RAM",
    "description":
        "Size liderlik tablosunun tepesine tırmanma olanağı sağlayan bir dizüstü bilgisayarla e-spor deneyiminizi geliştirin ve noobları geride bırakın. IdeaPad Gaming 3 (15), AMD Ryzen™ işlemciler, GeForce® grafikler, DDR4 bellek ve SSD depolama seçenekleriyle rekabetçi oyun oynamaya açılan kapınızdır.\n\nEn sevdiğiniz AAA oyunlarınızı, AMD Ryzen™ 4000 H-Serisi işlemciler, NVIDIA ile keyfini çıkarması gerektiği gibi sorunsuzca çalıştırınGeForceGTX grafik, DDR4 bellek ve M.2 NVMe PCIe SSD depolama seçenekleri. Bu güçlü özellikler, oyunları yüksek ayarlarda çalıştırabilmenizi sağlar, böylece oyun ortamınızdaki her ayrıntıyı her zaman görme avantajına sahip olursunuz.\n\nIdeaPad Gaming 3 dizüstü bilgisayar, hızlı refleksleri barındıran bir ekranla zaferi sunar. 120 Hze kadar yenileme hızına sahip 15,6 FHD ekran, görselleri net ve yırtılmadan tutar, böylece birden fazla oyun içi hedefi edinebilir ve bir efsane gibi öldürme serilerini artırabilirsiniz. Ayrıca bir HDMI 2.0 bağlantı noktasıyla, bir ekstra tam deneyimi elde etmek için monitör veya TV.\n\nSizi şanlı zafer için ayarlayan kontrollerle kokpite atlayın. IdeaPad Gaming 3ün geniş klavyesi, en üst düzeyde kontrol için 1,5 mm tuş hareketi ve her türlü aydınlatma durumunda önemli görünürlüğe yardımcı olmak için mavi arka aydınlatma ile oyuncular için tasarlanmıştır.",
    "image":
        "https://productimages.hepsiburada.net/s/170/550/110000133549306.jpg/format:webp",
    "image2":
        "https://productimages.hepsiburada.net/s/170/550/110000133549305.jpg/format:webp",
    "image3":
        "https://productimages.hepsiburada.net/s/170/550/110000133549307.jpg/format:webp",
  },
  {
    "id": 5,
    "tip": "2",
    "name": "Katana",
    "price": 17000.0,
    "brand": "MSI",
    "ekranboyutu": "17.3 inç",
    "garanti": "24",
    "hafiza": "1TB SSD",
    "ekranebati": "",
    "cozunurluk": "",
    "ekranformati": "",
    "kamera": "",
    "uydualici": "",
    "pil": "",
    "piksel": "",
    "ram": "16 GB",
    "ekrankarti": "Nvidia GeForce RTX 3060",
    "islemci": "Intel Core i7 11800H",
    "description":
        "En yeni 11.nesil Intel® Core™ i7 CPU ve NVIDIA® GeForce RTX™ 30 serisi grafiklerle donatılan Katana GF76 , oyun sırasında gerçek performansını ortaya çıkaracak şekilde optimize edildi. Yeni Katana GF76, çelik kılıçların dövüldüğü gibi özenli ve güçlü bir işçiliğe sahip. Optimal performansla çalışın, savaş alanında pırıl pırıl parlayın!\n\nEski zamanlarda, içinde ejderha ruhu barındıran efsanevi kılıçların varlığına inanılırdı. “Dragon Blade”, Ejder Klanı tarafından dövülen ve hiçbir silahın gücüne yaklaşamadığı bir kılıç. Her savruluşu kasırga gücünde inanılmaz bir rüzgar estiriyor ve her vuruşu gökyüzünde öfke dolu bir fırtına oluşturuyor. Onu kaldırın ve ejderhalardan gelen gücüyle savaşa girin, oyunda yepyeni zirvelere erişin!\n\nEn yeni 11.nesil Intel® Core™ i7 işlemcisi ile önceki nesile göre %40’a varan performans artışı sunar. 4.6GHz çift çekirdek turbo frekansı ile bu 8 çekirdekli işlemci oyunda, üretkenlikte ve multitasking gerektiren işlerinizde maksimum verimliliğe sahiptir.\n\nResizable BAR, işlemcinizin GPU çerçeve belleğinin tamamına tek seferde erişerek performansını arttırmasını sağlayan gelişmiş bir PCI Express özelliğidir.\n\nOyun grafiklerinde en önemli özelliklerden biri kabul edilen Ray tracing teknolojisi, ışığın fiziksel davranışını taklit eden ve görsel anlamda en yoğun oyunlarda bile sinema sahneleri kalitesinde görüntüleri gerçek zamanlı olarak oluşturabilen bir yöntemdir.\n\nNVIDIA DLSS, FPS değerlerini benzeri görülmemiş bir görüntü kalitesi ile sunmak için GeForce RTX üzerindeki adanmış AI Tensor çekirdeklerini kullanır. Bu sayede inanılmaz bir görsel deneyim için ihtiyacınız olan performans potansiyeline sahip olursunuz. Yapay Zeka devrimi artık oyunda da hissediliyor.\n\nÖzel kırmızı ışıklandırma ve sağlam metal koruma ile tasarlanan bu klavye, 1.7mm tuş mesafesi ile çok daha hızlı tepki ve taktik geribildirim sunuyor. Yeni ergonomik tasarımı sayesinde oyuncuların tüm ihtiyaçlarına cevap verecek.",
    "image":
        "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/msi/thumb/123273_large.jpg",
    "image2":
        "https://productimages.hepsiburada.net/s/77/550/110000018935333.jpg/format:webp",
    "image3":
        "https://productimages.hepsiburada.net/s/77/550/110000018935334.jpg/format:webp",
  },
  {
    "id": 6,
    "tip": "2",
    "name": "Excalibur",
    "price": 14750.0,
    "brand": "Casper",
    "ekranboyutu": "16.6 inç",
    "garanti": "24",
    "hafiza": "500 GB",
    "ekranebati": "",
    "kamera": "",
    "cozunurluk": "",
    "ekranformati": "",
    "uydualici": "",
    "pil": "",
    "piksel": "",
    "ekrankarti": "Nvidia GeForce RTX 3050 Ti",
    "islemci": "Intel Core i5 11400H",
    "ram": "8 GB",
    "description":
        "Performans beklentilerine en uygun oyun bilgisayarını oluşturman için yüzlerce konfigürasyon imkanı Excalibur G770de seçimini bekliyor. En güncel ekran kartı, işlemci, lisans,bellek, depolama ve ekran seçeneklerinden dilediğini seç, sana özel performans ile rakiplerinin önüne geç!\n\nPerformansın en estetik hali karşınızda, özel alüminyum alaşımdan tasarlanan Excalibur G770 ile performansdan ödün vermeden şık tasarıma da sahip olabilirsiniz. Hem daha dayanıklı hem de daha şık!\n\nExcalibur G770 oyun bilgisayarında 60 Hz ve 144 Hz değerinde iki farklı ekran arasından tercih yapabilir, yenilenme hızında üstün performansı ve en canlı renkleri deneyimleyebilirsin. Oyunda sadece 1 saniye kazananı belirlediğinde, ultra hızlı ekranın ile zafer her zaman senin..\n\nAkıllı turbo termal sistemler, Excalibur G770in soğutma sisteminin gücünü otomatik olarak artırır, en yüksek performansta dahi takılma veya yavaşlamayı engeller. 82 fan yaprağına sahip yeni soğutma tasarımı ile sıcak havanın tahliyesini ve soğuk havanın içeriye alınması çok daha hızlı ve kolay şekilde gerçekleşir.\n\nOyuncuların vazgeçilmezi, RGB klavyesiz bir oyun bilgisayarı düşünülemez! Saatler boyu heyecanını kaybetmeden oynaman için Excalibur G770de, RGB klavyenin büyülü renkleri seninle. Binlerce renk arasından moduna göre olanı seç ve oyunun keyfini çıkar.\n\nYeni yapay zeka destekli Dynamic Boost 2.0, güçlü performans artışı için gerekli gücü GPU, GPU bellek ve CPU arasında otomatik olarak iletir. Dynamic Boost 2.0 yapay zeka ağları, gücü her kare için ayrı ayrı yönetiyor. Bu şekilde dizüstü bilgisayarınız oyun sırasında ya da içerik oluştururken en yüksek performans için sürekli optimize edilir.\n\nBir önceki nesile göre %25e varan performans artışları sunan Intelin en yeni nesil Tigerlake-H işlemcileri kullanıldı. Hem de artık i7 modeller 8 çekirdek ve i5 modeller ise 6 çekirdekli yapısı ile çok daha yüksek performans sunar.\n\nExcalibur G770in akıllı hoparlörleri Dolby Digital ses sistemi ile oyunun atmosferini eksiksiz yaşamanı sağlıyor. Oyun oynarken, müzik dinlerken veya film izlerken, en yüksek ses seviyelerinde bile kaliteli ve berrak ses seni bekliyor.\n\nEn yeni 3200MHZ hıza sahip bellekler ile performansa güç katın. Çift(dual) slot desteği ile maksimum 64GBa kadar arttırabilirsin. \n\nSadece 5.5 mm inceliğe sahip çerçevesiyle Excalibur G770de detaylar başrolde. 17.3 ekran boyutunun görsel genişliğine yakın bir deneyimi, 15.6 ekran boyutunun kolaylıklarıyla bir arada.",
    "image":
        "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87054178/fee_786_587_png/CASPER-EXCALIBUR.G770.1140-8VJ0T-B-i5-11400H-8GB-Ram-500GB-NVMe-SSD-4GB-GTX-3050--15.6%22-FHD--Win10-Laptop-Metal-Siyah",
    "image2":
        "https://productimages.hepsiburada.net/s/181/1500/110000145985107.jpg",
    "image3":
        "https://productimages.hepsiburada.net/s/181/1500/110000145985109.jpg",
  },
  {
    "id": 7,
    "tip": "3",
    "name": "Samsung 55Q70",
    "price": 13600.0,
    "brand": "Samsung",
    "piksel": "3840 x 2160",
    "cozunurluk": "4K Ultra HD",
    "uydualici": "Var",
    "ekranformati": "16:9",
    "pil": "",
    "hafiza": "",
    "ram": "",
    "ekranboyutu": "",
    "kamera": "",
    "islemci": "",
    "ekrankarti": "",
    "garanti": "24",
    "ekranebati": "55 inç / 139 cm",
    "description":
        "4K Quantum İşlemci mükemmel performans, akıllı görüntü, ses optimizasyonu ve çok daha fazlasını sunarak her alanda sizi nefes kesen gerçek bir deneyime sürükler.\n\nQuantum HDR, ayrıntıları ve kontrastı ortaya çıkarır ve böylece her görüntüde kusursuz bir deneyim yaşarsınız. En ileri standartların ötesine geçen HDR10+’ın dinamik ton eşleştirme ile daha derin siyah renkler, daha canlı görüntüler ve her zaman parlayan ayrıntılar yaratır.\n\nGeniş İzleme Açısı daha geniş bir açıdan daha az renk kaybıyla muhteşem renkleri görebilmenizi sağlar. Yandan izlerken bile her zaman tüm görüntüyü görebilirsiniz.\n\nAyarlar menüsüne girip herhangi bir ayar yapmadan mükemmel resimleri deneyimleyebilirsiniz, çünkü ekranın parlaklık ve kontrastı izleme koşuluna ve izlediğiniz içeriğe göre otomatik olarak değişir.\n\nBırakın, TV ve soundbar’ın uyum içindeki sesleri sizi çepeçevre sarsın. Q-Symphony’nin benzersiz teknolojisi, daha iyi saran ses efekti sağlamak için TV hoparlörlerinin sesini kısmadan TV ve soundbar hoparlörlerinin aynı anda çalışmasını sağlar.",
    "image":
        "https://cdn.dsmcdn.com/mnresize/1200/1800/ty161/product/media/images/20210816/17/119082397/227669870/1/1_org_zoom.jpg",
    "image2":
        "https://productimages.hepsiburada.net/s/94/550/110000036607816.jpg/format:webp",
    "image3":
        "https://productimages.hepsiburada.net/s/95/550/110000038246421.jpg/format:webp",
  },
  {
    "id": 8,
    "tip": "3",
    "name": "LG OLED55B16LA",
    "price": 15998.0,
    "brand": "LG",
    "ekranebati": "55 inç / 139 cm",
    "pil": "",
    "hafiza": "",
    "ram": "",
    "ekranboyutu": "",
    "kamera": "",
    "islemci": "",
    "ekrankarti": "",
    "ekranformati": "16:9",
    "garanti": "24",
    "piksel": "3840 x 2160",
    "uydualici": "Var",
    "cozunurluk": "4K Ultra HD",
    "description":
        "Kendinden aydınlatmalı pikseller ile mümkün olan kusursuz OLED siyahı diğerleriyle karşılaştırılmayacak çarpıcı kontrastı yaratır. Ortaya çıkan kontrast, sinematik deneyim için tüm renklere derinlik katar ve detayları ortaya çıkarır.\n\nArkadan aydınlatmalı LED ve Mini LED TVler ekranda renkleri göstermek için bir filtreden ışık geçirir, bu da görüntüde bozulmaya sebep olabilir. LG OLED TV, kendinden aydınlatmalı pikselleri ile herhangi bir bozulma olmadan en canlı siyah ve renklerle birlikte sonsuz kontrast sağlar. Bu sayede bir gökyüzü sahnesinde en ufak yıldızları bile net olarak görebilirsiniz.\n\nLG OLED ekranların %100 renk doğruluğuna sahip olduğu uluslararası test ajanslarından Intertek tarafından onaylandı. Bu, ekranda gördüğünüz renklerin orijinal görüntünün renklerine çok yakın olduğu anlamına gelir. Böylece izlediğiniz her şey, içerik yaratıcısının istediği gibi görünür.\n\nRenk Doğruluğu testleri, orijinal bir görüntünün rengi ile bir ekran tarafından gösterilen renk arasındaki farkı belirler. Testte örnek renkler çıkarılmış ve kullanılmıştır. Sonuçlar, LG OLED ekranlarda gösterilen örnek renklerin %100ünün orijinal renklerle yakından eşleştiğini doğrulamıştır. LED ekranlarda gösterilen örnek renklerin yalnızca %70-80i orijinal renklerle yakından eşleşmiştir.\n\nLG OLED TVler, yönetmenler tarafından görüntü kalitesi standardını belirleyen bir televizyon olarak kabul edilmeye devam ediyor. 72. Teknoloji ve Mühendislik Emmy Ödülleri’nde Hollywood Referans Ekranı ödülünün kazananı da olan LG OLED TV, üstün teknolojisi, kusursuz siyahı ve doğru renk üretimi ile Hollywoodun tercihi haline geliyor.\n\nNetflix, Apple TV ve Amazon Prime Video uygulamalarıyla favori içeriklerinizi en üstün kalitede deneyimleyin. En yeni filmler, diziler, belgeseller ve daha fazlasına tek bir tuşla erişin. Arkanıza yaslanın ve yeni nesil TV deneyiminin keyfini çıkarın.\n\nNetflix ve başlıca Hollywood stüdyolarının tercih ettiği, her bir sahne için gelişmiş renk doğruluğu ve kontrast sunan Dolby Vision formatını destekleyen LG OLED TV, yeni eklenen Dolby Vision IQ özelliği ile ortam ışığının tespit edilmesi ile en iyi görüntü kalitesini sağlamak için izlediğiniz içeriği ortam ışığına göre uyarlar. Dolby Atmos ise her nesnenin hareketini gerçekçi bir şekilde yakalar ve 360 surround ses performansı sunar. Dolby Vision IQ ve Atmos bir araya geldiğinde LG OLED TVde sürükleyici bir sinema deneyimi yaşatır.",
    "image":
        "https://productimages.hepsiburada.net/s/103/550/110000045904639.jpg/format:webp",
    "image2":
        "https://productimages.hepsiburada.net/s/103/550/110000045904642.jpg/format:webp",
    "image3":
        "https://productimages.hepsiburada.net/s/103/550/110000045904643.jpg/format:webp",
  },
  {
    "id": 9,
    "tip": "3",
    "name": "Vestel 43F9510",
    "price": 4946.0,
    "brand": "Vestel",
    "cozunurluk": "Full HD",
    "ekranebati": "43 inç / 108 cm",
    "ekranformati": "16:9",
    "pil": "",
    "hafiza": "",
    "ram": "",
    "ekranboyutu": "",
    "kamera": "",
    "islemci": "",
    "ekrankarti": "",
    "garanti": "36",
    "piksel": "1920 x 1080",
    "uydualici": "Var",
    "description":
        "Günümüzde smart TV’ler akıllı özellikleri, internet bağlantıları, görüntü ve ses kaliteleriyle bir televizyondan çok daha fazlasını ifade ediyor. Gelişen teknolojiler sayesinde farklı televizyon modellerine imza atan Vestel markası, kaliteyi ve tasarımı ön planda tutarak ürettiği full HD LED TV modelleriyle adından sıklıkla söz ettiriyor. Vestel smart TV, kullanıcılarına konfor sunan özellikleri sayesinde oldukça fazla beğeniliyor. Hayat kolaylaştıran teknolojileri ile dikkatleri üzerine çeken Vestel 43F9510 43 inç 108 Ekran Uydu Alıcılı Full HD Smart LED TV fiyatı, Wi-Fi ve uydu alıcı özellikleri, ekran boyutları, kaliteli ve şık tasarımı ile smart TV tavsiyelerinde ön plana çıkıyor.\n\nAkıllı teknolojilerle donatılan Vestel 108 ekran uydu alıcılı full HD özellikleri, kullanıcılarını memnun etmeyi başarıyor. Fonksiyonel özellikleri sayesinde bilgisayar monitörü, oyun bilgisayarı, sinema ekranı gibi kullanılabilen smart TV, teknoloji meraklılarının vazgeçilmezleri arasında yer alıyor. Uyduya veya antene ihtiyaç duymadan sayısız TV program kanalını evinize getiriyor. Wi-Fi teknolojisi sayesinde kullanıcılarına internette gezinme, dijital film içeriklerine erişim sağlama, oyun oynama gibi imkânlar tanıyor. İnternetten ulaşılan veya kayıtlı multimedya içeriklerini yüksek kalitede ekrana yansıtan Vestel 43F9510 TV, seyir keyfini ileri bir seviyeye çıkarıyor. , gibi dijital platformlar televizyonda kayıtlı olarak yer alıyor. Sinema ayrıcalığını evlere getiren konforu sayesinde ilgiyle takip ettiğiniz içeriklere Vestel smart TV ile erişim kolaylığı sağlanıyor. Ayrıca DTS ses sistemiyle sinema salonlarında olduğu gibi güçlü ve net seslere ulaşmak mümkün. Vestel 43F9510 full HD, 48 Hertz ses hızına kadar ulaşabilen ses mekanizması ile gerçekçi ses deneyimi sunar.\n\nTablet, telefon, bilgisayar gibi akıllı cihazlarla uyum içerisinde çalışan Vestel smart TV, kullanıcı dostu özellikleriyle televizyondan alınan performansı artırıyor. Veri paylaşımını kolaylaştıran bluetooth teknolojisi sayesinde akıllı cihazlardaki fotoğraf, video ve müzik dosyalarını televizyon ekranından takip etmenize imkân tanır. Böylelikle farklı multimedya içeriklerini daha net ve büyük boyutlarda görüntüleyebilirsiniz. Tabletlere veya akıllı telefonlara indirilebilen Vestel Smart Center uygulaması ile Vestel full HD televizyonu evinizdeki diğer akıllı cihazlardan kontrol etmek mümkün. Bu sayede televizyona içerik aktarımını kolaylıkla yapabileceğiniz gibi televizyonda bulunan dosyaları da akıllı cihazınız ile paylaşabilirsiniz. Ayrıca Vestel Smart Center uygulaması bulunan cihazları kumanda yerine de kullanabilirsiniz.\n\nGörüntü netliği konusunda standart televizyon modellerinin önüne geçen Vestel smart LED TV, patentli Pixellence özelliği sayesinde içeriklerin en ince ayrıntısına kadar net ve kaliteli bir şekilde görüntülenmesini sağlar. 1920x1080 piksel çözünürlüğünün yanı sıra kontrast iyileştirme ve renk iyileştirme teknolojilerine sahip akıllı televizyon, kullanıcılarına üstün görüntü çözünürlüğü ve mükemmel renk deneyimi sunar. Gerçeklik algısı üzerinde etkili olan canlı renk ayarları ile sizi izlediğiniz bir internet içeriğinin ya da TV programının içine çeker. Ayrıca modern tasarımıyla da ön planda olan Vestel TV, 108 ekran 43 inç boyutları ve ince görüntüsüyle oturma alanlarınızda hoş bir görüntü oluşturur. İnternet ve televizyon içeriklerini büyük ekrandan izlemenize olanak tanıyan tasarımı, Vestel uydu alıcılı HD LED TV’yi ayrıcalıklı hale getiriyor. Siyah ince çerçeve şeritleriyle şık bir görünüm sunan smart TV, her türden mobilya dekorasyonuna uyum sağlar. Vestel TV ile herhangi bir uyduya veya antene gerek kalmadan televizyon kanallarına televizyon kanallarına erişebildiği gibi internet bağlantısı için de ek bir kabloya ihtiyaç duyulmaz. Bu sayede televizyon arkasında dekorasyonu olumsuz anlamda etkileyecek kablo fazlalığı engellenmiş olur.",
    "image":
        "https://productimages.hepsiburada.net/s/136/550/110000088119022.jpg/format:webp",
    "image2":
        "https://productimages.hepsiburada.net/s/136/550/110000088119023.jpg/format:webp",
    "image3":
        "https://productimages.hepsiburada.net/s/136/550/110000088119025.jpg/format:webp",
  }
];

class ProductModel {
  String name;
  String tip;
  double price;
  String image;
  String image2;
  String image3;
  String brand;
  String garanti;
  String description;
  String ram;
  String ekranboyutu;
  String hafiza;
  String ekranebati;
  String piksel;
  String pil;
  String cozunurluk;
  String ekranformati;
  String islemci;
  String uydualici;
  String kamera;
  String ekrankarti;
  int id;
  int? shopId;

  ProductModel(
      {this.shopId,
      required this.brand,
      required this.garanti,
      required this.tip,
      required this.hafiza,
      required this.kamera,
      required this.ram,
      required this.image2,
      required this.image3,
      required this.islemci,
      required this.cozunurluk,
      required this.piksel,
      required this.uydualici,
      required this.ekranebati,
      required this.ekranformati,
      required this.pil,
      required this.ekrankarti,
      required this.description,
      required this.ekranboyutu,
      required this.id,
      required this.price,
      required this.image,
      required this.name});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      tip: json['tip'],
      ekranboyutu: json['ekranboyutu'],
      hafiza: json['hafiza'],
      kamera: json['kamera'],
      piksel: json['piksel'],
      islemci: json['islemci'],
      uydualici: json['uydualici'],
      ekranebati: json['ekranebati'],
      ekranformati: json['ekranformati'],
      pil: json['pil'],
      ekrankarti: json['ekrankarti'],
      ram: json['ram'],
      cozunurluk: json['cozunurluk'],
      brand: json['brand'],
      garanti: json['garanti'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
      image2: json['image2'],
      image3: json['image3'],
      name: json['name'],
      shopId: json['shop_id'] ?? 0,
    );
  }
}
