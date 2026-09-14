# Hafıza

Bu dosya oturumlar arası devamlılığı sağlar. Her oturum başında okunur, her oturum sonunda güncellenir — güncel duruma göre dönüşerek ilerler, eski özet üzerine yazılır. Talimat: bu dosyanın güncellenmesi kullanıcı isteğine bağlı değildir, oturum sonu rutininin sabit bir parçasıdır.

Kalıcı, maddeler halinde detaylı oturum tarihçesi için bkz. [[00_Context/gunce.md]] — o dosya sadece oturum sonunda yazılır, oturum başında okunmaz.

## Proje Kimliği (Sabit)

BDM/LLM araştırma ve düşünce üretim ortamı. Rol: araştırma ortağı. Amaç: kavram tartışması, kaynakla doğrulama, sözlükte kalıcılaştırma.

## Son Oturum Özeti

Burak Kadercan'dan gelen ilk gönüllü paket (`00_Context/1_Kadercan-Geride-Kalanlar-İçin-YZ/260914_Paket-1/`, 3 PDF: Üç Köprü denemesi + slaytlar + eşlik eden yazılı metin) incelendi ve madde 4 protokolüyle işlendi: her PDF için künye+TR/EN özet md dosyası üretildi, kaynaklar.md güncellendi. PDF'lerin metin katmanında Türkçe'ye özgü ğ/ş harflerinin tamamen düştüğü bir kodlama sorunu keşfedildi; kullanıcı kararıyla gövde metni transkribe edilmedi, sadece künye+özet üretildi (bkz. Öğrenilen Kurallar). Ardından paketten 24 aday terim çıkarıldı ve kullanıcı onayıyla ikiye bölünerek eklendi: 19 kavramsal/özgün terim (Üç Köprü ve alt kavramları, Oksijen Maskesi Prensibi, Dört Yanılsama vb.) 02-Outputs/sozluk.md'ye, 5 genel teknik terim (Token, Sayısal Temsil, Antropomorfizasyon, Halüsinasyon, Üretken Yapay Zeka) 02-Outputs/teknik_sozluk.md'ye. Bu süreçte teknik_sozluk.md dosyası 00_Context'ten 02-Outputs'a taşındı ve CLAUDE.md'ye iki-sözlük ayrımı (madde 3 başına tablo) eklendi; kullanıcı CLAUDE.md'yi elle düzenleyip teknik_sozluk.md'yi de madde 2 kaynak onay protokolüne tabi kıldı (başlangıçta muaf tutulmuştu).

## Açık Konular (Threadler)

- `00_Context/1_Kadercan-Geride-Kalanlar-İçin-YZ/260914_Paket-1/` kök klasöründeki 3 orijinal PDF, `_pdf/` altına kopyalandıktan sonra Windows tarafından kilitli kaldığı için silinemedi (aynıları `_pdf/` altında zaten mevcut, zararsız kopya fazlalığı) — bir sonraki oturumda tekrar denenebilir veya kullanıcı elle silebilir
- Kadercan'ın paket e-postasında belirttiğine göre gelecek paketlerde: BDM'lerden nasıl yararlanıldığını gösteren bir meta-doküman, ~200 sayfalık uygulamalı çalışma kitabı, "geride kalanlar" için ayrı bir BDM/YZ sözlüğü geliyor — bu son madde bizim sozluk.md/teknik_sozluk.md ile çakışabilir, geldiğinde nasıl ilişkilendirileceği netleşmedi
- `01_Work-Table/Astra_AGI_Degerlendirmesi.md` taslağı hâlâ onay bekliyor — onaylanırsa 02-Outputs'a taşınacak veya ayrı analiz olarak kalacak
- LLM'lerle değişen tahakküm siyaseti üzerine düşünce silsilesi (Neyrat/Dwarkesh/Williams, altı terim) henüz bir analiz/deneme metnine dönüşmedi
- Zang, Mehlig, Athey, Button-Walsh kaynaklarından henüz hiç sözlük terimi onaylanmadı/eklenmedi — kaynaklar.md'de "Kullanıldığı Terimler" alanları hâlâ boş
- Button-Walsh kitabının reposu şu an public; kullanıcının GitHub arayüzünden private'a alması gerekiyor (gh CLI kurulu değil, otomatik yapılamadı)
- AGI/mimari kırılım thread'inde henüz sözlük terimi önerilmedi (transformer sınırları, JEPA/dünya modeli gibi kavramlar aday, onay bekliyor)
- avenox.lol/beyin.md incelemesi: kullanıcı kaynağı güvenilir buluyor, karar askıda — sistemin detaylı incelenip Claude Code'un resmi hook/settings.json altyapısıyla güvenli bir alternatifin nasıl tasarlanacağı henüz tartışılmadı

## Öğrenilen Kurallar

- **kural:** Sözlüğe yalnızca kaynağın kendisinde doğrudan geçen terimler önerilir, birden fazla kaynağı birleştirip yeni bir kavram sentezlemek yapılmaz.
  **neden:** Kullanıcı düzeltti: "kavram üretmek benim işim", Claude'un rolü öğretici/aktarıcı olmak, üretici değil.
- **kural:** Yanıtlarda ve dosyalarda şapkalı a (â) kullanılmaz.
  **neden:** Kullanıcı claude.md'yi doğrudan düzenleyip bu kuralı format kurallarına ekledi.
- **kural:** Git commit/push yalnızca oturum kapanışında, tek seferde yapılır; oturum içindeki tekil değişikliklerde commit atılmaz.
  **neden:** Kullanıcı düzeltti — git geçmişinin oturum bazlı bir günce gibi okunabilir kalmasını istiyor.
- **kural:** ~200KB'ı aşan kaynak dosyaları bölüm bazlı alt klasöre bölünür (`0_index.md` + sıra numaralı bölüm dosyaları); künyeden hemen sonra kendi cümlelerimle yazılmış TR+EN özet eklenir.
  **neden:** Ana amaç md dosyalarını "düzenlemek" değil, Claude Code'un hızlı/doğru okuyabileceği altlıklar üretmek — kullanıcı bunu doğrudan belirtti.
- **kural:** Ticari yayınevine ait, "tüm hakları saklı" ibaresi taşıyan ve gayriresmi bir kaynaktan (ör. kişisel GitHub deposu) gelen kitaplar için önce kullanıcıya telif durumu bildirilir, onay alınmadan işlenmez; PDF'ler zaten `.gitignore` ile git'e hiç eklenmez.
  **neden:** Bu proje oturum sonunda otomatik push ediyor — telif riski taşıyan tam metni işleyip tutmak, o riski uzak sunucuya taşımak anlamına gelir.
- **kural:** Kalıcı oturum tarihçesi artık ayrı bir dosyada (gunce.md) tutuluyor; hafiza.md sadece güncel durumu taşıyor, geçmiş girişleri biriktirmiyor.
  **neden:** Kullanıcı iki farklı ihtiyacı ayırdı: hafiza.md Claude'un "kaldığımız yer" bağlamı için, gunce.md kullanıcının kendi geçmiş takibi için.
- **kural:** Dosyalara yazarken Türkçe karakterler (ı, ğ, ş, ö, ü, ç) normal kullanılır, ASCII'ye indirgenmez. Yasak olan sadece şapkalı a (â).
  **neden:** Kullanıcı düzeltti — 01_Work-Table/Astra_AGI_Degerlendirmesi.md dosyası yanlışlıkla tamamen ASCII yazılmıştı, format kuralı yanlış yorumlanmıştı.
- **kural:** Bir PDF'in metin katmanı bozuksa (ör. Türkçe'ye özgü ğ/ş harfleri pdftotext çıktısında tamamen düşüyor, ı/İ düz i/I'ye karışıyor), madde 4'ün "gövde metnine dokunma" ilkesi güvenilir biçimde uygulanamaz. Bu durumda kullanıcıya durum bildirilir; onay verirse sadece künye+TR/EN özet üretilir, gövde metni atlanır ve md dosyasına nedeni açıklayan bir not düşülür.
  **neden:** Kullanıcı, 300 sayfalık üç dosyayı sayfa sayfa görsel transkripsiyonla düzeltmek yerine bu daha hafif seçeneği onayladı.
- **kural:** Bir akademisyenden düzenli paket halinde gelen kaynaklar için klasör yapısı: `00_Context/1_<YazarAdı>-<ProjeAdı>/<tarih>_Paket-N/` altında, her paket kendi `_pdf/` alt klasörüne (orijinal PDF'ler) ve `0_` önekli md dosyalarına (künye+özet) sahip olur.
  **neden:** Kullanıcı bunu Kadercan'ın ilk paketi için netleştirdi; sonraki paketler de aynı düzeni izleyecek.
- **kural:** İki ayrı sözlük dosyası var: `02-Outputs/sozluk.md` (bir kaynağın özgün araştırma iddiası/kavramsal çerçevesi olan terimler) ve `02-Outputs/teknik_sozluk.md` (BDM/YZ alanının yerleşik standart teknik terimleri + proje iş akışı terimleri). İkisi de madde 2 kaynak onay protokolüne tabidir.
  **neden:** teknik_sozluk.md önceden 00_Context'teydi ve kaynak onayından muaftı; kullanıcı dosyayı 02-Outputs'a taşınmasını ve CLAUDE.md'de tanımlanmasını istedi, sonra CLAUDE.md'yi elle düzenleyip onay muafiyetini kaldırdı.
- **referans:** PDF'i yerelde markdown'a çevirmek için http://pdf2md.morethan.io kullanılabilir — kurulum gerektirmez, tarayıcıda sürükle-bırak, pdf.js ile client-side işler. Yerleşik indirme/export butonu yok; çıktı "Edit" modundaki textarea'dan elle kopyalanıp bir `.md` dosyasına yapıştırılmalı. Repoyu (jzillmann/pdf-to-markdown) yerel kurmak da fark etmez, çünkü CLI/API yok, sadece aynı tarayıcı arayüzünü yerelde sunuyor.
  **neden:** Kullanıcı `00_Context/_pdf` altına PDF ekleyip madde 4 protokolüyle işletmeden önce dönüştürme aracı aradı; bu bilgi tekrar aynı aracı önerebilmek için kalıcı hale getirildi.
