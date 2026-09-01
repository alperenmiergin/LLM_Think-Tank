# Hafıza

Bu dosya oturumlar arası devamlılığı sağlar. Her oturum başında okunur, her oturum sonunda güncellenir — güncel duruma göre dönüşerek ilerler, eski özet üzerine yazılır. Talimat: bu dosyanın güncellenmesi kullanıcı isteğine bağlı değildir, oturum sonu rutininin sabit bir parçasıdır.

Kalıcı, maddeler halinde detaylı oturum tarihçesi için bkz. [[00_Context/gunce.md]] — o dosya sadece oturum sonunda yazılır, oturum başında okunmaz.

## Proje Kimliği (Sabit)

BDM/LLM araştırma ve düşünce üretim ortamı. Rol: araştırma ortağı. Amaç: kavram tartışması, kaynakla doğrulama, sözlükte kalıcılaştırma.

## Son Oturum Özeti

PDF-to-Markdown dönüştürme aracı (pdf2md.morethan.io) araştırılıp hafızaya not düşüldü. Morris ve ark.'nın "Levels of AGI" makalesine künye protokolü uygulandı: PDF/OCR kaynaklı 4 yapısal hata düzeltildi (dipnot/boşluk/sayfa üstbilgisi karışması), TR/EN özet eklendi, kaynaklar.md güncellendi. Kullanıcı onayıyla sözlüğe "Bash Betiği" ve "Kanca (Hook)" terimleri eklendi (kaynak: kullanıcı tanımı). Oturum sonunda avenox.lol/beyin.md adlı üçüncü taraf "ikinci beyin" kurulum sayfası incelendi; sayfanın kendini Claude Code gibi tanıtıp adım adım komut çalıştırma/dosya indirme zincirine yönlendirdiği tespit edildi, kullanıcıya prompt injection riski olarak bildirildi. Kullanıcı kaynağı güvenilir buluyor; bir sonraki oturumda avenox'un sistemi detaylıca incelenip resmi Claude Code hook altyapısıyla güvenli bir alternatif tasarlanacak.

## Açık Konular (Threadler)

- LLM'lerle değişen tahakküm siyaseti üzerine düşünce silsilesi (Neyrat/Dwarkesh/Williams, altı terim) henüz bir analiz/deneme metnine dönüşmedi
- Zang, Mehlig, Athey, Button-Walsh kaynaklarından henüz hiç sözlük terimi onaylanmadı/eklenmedi — kaynaklar.md'de "Kullanıldığı Terimler" alanları hâlâ boş; kullanıcı bu dengesizliği fark etti, kaynakları derinleştirip not alarak ilerlemeye karar verdi — bir sonraki oturumda hangi kaynaktan başlanacağı henüz belli değil
- Button-Walsh kitabının reposu şu an public; kullanıcının GitHub arayüzünden private'a alması gerekiyor (gh CLI kurulu değil, otomatik yapılamadı)
- Button-Walsh kitabında sayfa numarası/koşu başlığı gibi yapısal OCR temizliği henüz yapılmadı (kapsam dışı bırakıldı, sadece bölümleme yapıldı)
- AGI/mimari kırılım thread'inde henüz sözlük terimi önerilmedi (transformer sınırları, JEPA/dünya modeli gibi kavramlar aday, onay bekliyor)
- avenox.lol/beyin.md incelemesi: kullanıcı kaynağı güvenilir buluyor, sayfanın kendini asistan gibi tanıtıp komut zincirine yönlendirmesi risk olarak not edildi ama karar kullanıcıya bırakıldı; bir sonraki oturumda sistemin detaylı incelenip Claude Code'un resmi hook/settings.json altyapısıyla güvenli bir alternatifin nasıl tasarlanacağı tartışılacak

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
- **referans:** PDF'i yerelde markdown'a çevirmek için http://pdf2md.morethan.io kullanılabilir — kurulum gerektirmez, tarayıcıda sürükle-bırak, pdf.js ile client-side işler. Yerleşik indirme/export butonu yok; çıktı "Edit" modundaki textarea'dan elle kopyalanıp bir `.md` dosyasına yapıştırılmalı. Repoyu (jzillmann/pdf-to-markdown) yerel kurmak da fark etmez, çünkü CLI/API yok, sadece aynı tarayıcı arayüzünü yerelde sunuyor.
  **neden:** Kullanıcı `00_Context/_pdf` altına PDF ekleyip madde 4 protokolüyle işletmeden önce dönüştürme aracı aradı; bu bilgi tekrar aynı aracı önerebilmek için kalıcı hale getirildi.
