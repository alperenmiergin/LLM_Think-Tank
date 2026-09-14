# Teknik Sözlük

Bu dosya iki tür genel teknik kavramı biriktirir: (1) proje iş akışında geçen kavramlar (git, araçlar, dosya sistemi vb.), (2) BDM/YZ alanının standart teknik/mekanik kavramları (token, embedding, antropomorfizasyon vb.). BDM/LLM araştırma sözlüğünden (02-Outputs/sozluk.md) farkı şu: buradaki terimler yerleşik, standart teknik tanımlardır, belirli bir kaynağın özgün araştırma iddiası veya kavramsal çerçevesi değildir. Bir kaynak yeni bir kavramsal çerçeve veya özgün terim sunuyorsa (ör. bir yazarın kendi adlandırdığı model/ilke), o terim burada değil sozluk.md'de yer alır. Her iki dosya da kaynak onay protokolüne (madde 2) tabidir.

Alfabetik sırayla tutulur.

## Ajan (Agent)

Bir ortamı algılayan, karar veren ve o ortam üzerinde eylemde bulunan yazılım sistemi; BDM bağlamında genellikle bir dil modelinin araç kullanımı, planlama ve çok adımlı görev yürütme yetenekleriyle donatılmış hali için kullanılır.

## Antropomorfizasyon (Anthropomorphism)

İnsan olmayan bir varlığa, kuruma veya nesneye niyet, anlayış, düşünce gibi insana özgü nitelikler yükleme eğilimi. BDM'lerde bu eğilim özellikle güçlüdür, çünkü sistem düzgün cümleler kurarak insan dilini üretir ve bu da "anladı", "biliyor", "düşündü" gibi yorumları neredeyse kendiliğinden tetikler; dil benzerliği zihin benzerliği anlamına gelmez.

## API (Application Programming Interface)

İki yazılım sistemi arasında, birinin diğerinin işlevlerine veya verilerine standart bir istek-yanıt biçimiyle erişmesini sağlayan arayüz tanımı.

## Bash Betiği (Bash Script)

Unix/Linux kabuğu (Bash) için yazılmış, bir dizi komutu sırayla veya koşullu olarak çalıştıran metin dosyası; bir kanca (hook) tarafından tetiklendiğinde veya manuel çalıştırıldığında otomasyon görevlerini yürütür.

## Commit

Git'te değişikliklerin yerel depoda kalıcı bir anlık görüntüsünü (snapshot) alma işlemi. Sadece yerel makinede gerçekleşir, uzak bir sunucuya (GitHub vb.) ulaşmaz. Her commit bir mesajla açıklanır ve geri dönülebilir bir tarihçe noktası oluşturur.

## Halüsinasyon (Hallucination)

BDM'nin doğru, yanlış veya hiç var olmayan bir bilgiyi aynı akıcılıkla üretebilmesi durumu. Terim, sanki modelde ayrı ve arızi bir "yanılma" mekanizması varmış izlenimi verir; oysa model her durumda aynı temel mekanizmayı (bağlama uygun olası bir devam tahmin etmeyi) çalıştırır — doğruluğu ayrıca denetleyen bir alt sistem yoktur. Bu yüzden bir çıktının akıcı, ayrıntılı veya kendinden emin görünmesi, doğruluğu hakkında tek başına bir şey söylemez.

## Kanca (Hook)

Bir sistemde belirli bir olay (oturum başlangıcı/bitişi, bir aracın çalıştırılmasından önce/sonra vb.) gerçekleştiğinde, dil modelinin müdahalesi olmadan otomatik tetiklenen, önceden tanımlanmış komut veya betik.

## MCP (Model Context Protocol)

Anthropic tarafından geliştirilen, dil modellerinin (istemci) harici veri kaynakları ve araçlarla (sunucu) standart bir protokol üzerinden bağlanmasını sağlayan açık protokol; her entegrasyon için özel kod yazmak yerine tek bir ortak arayüz sunar.

## Push

Yerel depodaki commit edilmiş değişiklikleri uzak bir depoya (remote) gönderme işlemi. Commit olmadan push yapılamaz; push yapılmadan commit'ler yalnızca yerel makinede kalır, başka kimseyle veya cihazla paylaşılmaz. Bu projede varsayılan olarak push yapılmaz, sadece yerel commit alınır.

## Sayısal Temsil (Embedding)

Bir token'ın hem kimliğini hem de diğer token'larla bağlamsal ilişkisini kodlayan, çok sayıda sayının birlikte oluşturduğu temsil. Eğitim sırasında benzer bağlamlarda geçen parçaların temsilleri birbirine yakınlaşır (ör. "kedi" ile "köpek"), farklı bağlamlarda kullanılanlarınki uzaklaşır (ör. "kedi" ile "otomobil"). Sayısal temsil dilin kendisi değildir, dildeki bazı ilişkileri hesaplanabilir hale getirmenin bir yoludur.

## Token (Belirteç)

Bir BDM'nin metni işlerken böldüğü en küçük birim; bir kelimenin tamamı, bir bölümü veya bazen tek bir işaret olabilir. Model metni tek bir bütün olarak değil, token dizisi olarak işler ve çıktısını da bu token'ları sırayla tahmin ederek üretir.

## Üretken Yapay Zeka (Generative AI)

Derin öğrenmeyle güçlenen, verideki örüntülerden hareketle metin, görüntü, ses/müzik veya kod gibi daha önce var olmayan yeni içerik üretebilen yapay zeka ailesi. Büyük dil modelleri (BDM), bu ailenin dil ağırlıklı koludur.
