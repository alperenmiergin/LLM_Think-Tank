# Teknik Sözlük

Bu dosya proje iş akışında (git, araçlar, dosya sistemi vb.) geçen genel teknik kavramları içerir. BDM/LLM araştırma sözlüğünden (02-Outputs/sozluk.md) farklıdır: kaynak onay protokolüne tabi değildir, çünkü standart teknik tanımlardır, araştırma iddiası değildir.

## Ajan (Agent)

Bir ortamı algılayan, karar veren ve o ortam üzerinde eylemde bulunan yazılım sistemi; BDM bağlamında genellikle bir dil modelinin araç kullanımı, planlama ve çok adımlı görev yürütme yetenekleriyle donatılmış hali için kullanılır.

## API (Application Programming Interface)

İki yazılım sistemi arasında, birinin diğerinin işlevlerine veya verilerine standart bir istek-yanıt biçimiyle erişmesini sağlayan arayüz tanımı.

## Bash Betiği (Bash Script)

Unix/Linux kabuğu (Bash) için yazılmış, bir dizi komutu sırayla veya koşullu olarak çalıştıran metin dosyası; bir kanca (hook) tarafından tetiklendiğinde veya manuel çalıştırıldığında otomasyon görevlerini yürütür.

## Commit

Git'te değişikliklerin yerel depoda kalıcı bir anlık görüntüsünü (snapshot) alma işlemi. Sadece yerel makinede gerçekleşir, uzak bir sunucuya (GitHub vb.) ulaşmaz. Her commit bir mesajla açıklanır ve geri dönülebilir bir tarihçe noktası oluşturur.

## Kanca (Hook)

Bir sistemde belirli bir olay (oturum başlangıcı/bitişi, bir aracın çalıştırılmasından önce/sonra vb.) gerçekleştiğinde, dil modelinin müdahalesi olmadan otomatik tetiklenen, önceden tanımlanmış komut veya betik.

## MCP (Model Context Protocol)

Anthropic tarafından geliştirilen, dil modellerinin (istemci) harici veri kaynakları ve araçlarla (sunucu) standart bir protokol üzerinden bağlanmasını sağlayan açık protokol; her entegrasyon için özel kod yazmak yerine tek bir ortak arayüz sunar.

## Push

Yerel depodaki commit edilmiş değişiklikleri uzak bir depoya (remote) gönderme işlemi. Commit olmadan push yapılamaz; push yapılmadan commit'ler yalnızca yerel makinede kalır, başka kimseyle veya cihazla paylaşılmaz. Bu projede varsayılan olarak push yapılmaz, sadece yerel commit alınır.
