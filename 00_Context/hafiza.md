# Hafıza

Bu dosya oturumlar arası devamlılığı sağlar. Her oturum başında okunur, her oturum sonunda güncellenir — güncel duruma göre dönüşerek ilerler, eski özet üzerine yazılır. Talimat: bu dosyanın güncellenmesi kullanıcı isteğine bağlı değildir, oturum sonu rutininin sabit bir parçasıdır.

Kalıcı, maddeler halinde detaylı oturum tarihçesi için bkz. [[00_Context/gunce.md]] — o dosya sadece oturum sonunda yazılır, oturum başında okunmaz.

## Proje Kimliği (Sabit)

BDM/LLM araştırma ve düşünce üretim ortamı. Rol: araştırma ortağı. Amaç: kavram tartışması, kaynakla doğrulama, sözlükte kalıcılaştırma.

## Son Oturum Özeti

OpenAI'ın GPT-6 Astra duyurusu (3 Eylül 2026, AGI iddiası) ve Anthropic'in Fable 5.1 duyurusu (1 Eylül 2026) araştırılıp kaynaklandı: Astra için 2 onaylı kaynak (openai.com, developers.openai.com), Fable/Astra kıyası için 3 onaylı kaynak (anthropic.com, artificialanalysis.ai, llm-stats.com), Sonnet/Opus/Fable segmentasyonu için 3 onaylı kaynak (platform.claude.com Models overview, 2x artificialanalysis.ai) kaynaklar.md'ye eklendi; onaylanmayan ~9 kaynak (haberler, sızdırılmış benchmark iddiaları, tekil ürün sayfaları) gerekçeleriyle reddedilenler.md'ye işlendi. `01_Work-Table/Astra_AGI_Degerlendirmesi.md` taslağı oluşturuldu: Morris ve ark.'nın Levels of AGI çerçevesiyle Astra değerlendirmesi, ayrı bir "Fable 5.1 ile Kıyas" bölümü (benchmark tablosu + kapasite bazlı karşılaştırma + açıkça işaretli spekülatif sentez). Oturum içinde bir format hatası tespit edildi ve düzeltildi: dosya yanlışlıkla tamamen ASCII (Türkçe karaktersiz) yazılmıştı, düzeltilip kurala bağlandı (bkz. Öğrenilen Kurallar). Taslak henüz kullanıcı onayı almadı, 02-Outputs'a taşınmadı; sözlüğe yeni terim eklenmedi.

## Açık Konular (Threadler)

- `01_Work-Table/Astra_AGI_Degerlendirmesi.md` taslağı onay bekliyor — onaylanırsa 02-Outputs'a taşınacak veya ayrı analiz olarak kalacak
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
- **kural:** Dosyalara yazarken Türkçe karakterler (ı, ğ, ş, ö, ü, ç) normal kullanılır, ASCII'ye indirgenmez. Yasak olan sadece şapkalı a (â).
  **neden:** Kullanıcı düzeltti — 01_Work-Table/Astra_AGI_Degerlendirmesi.md dosyası yanlışlıkla tamamen ASCII yazılmıştı, format kuralı yanlış yorumlanmıştı.
- **referans:** PDF'i yerelde markdown'a çevirmek için http://pdf2md.morethan.io kullanılabilir — kurulum gerektirmez, tarayıcıda sürükle-bırak, pdf.js ile client-side işler. Yerleşik indirme/export butonu yok; çıktı "Edit" modundaki textarea'dan elle kopyalanıp bir `.md` dosyasına yapıştırılmalı. Repoyu (jzillmann/pdf-to-markdown) yerel kurmak da fark etmez, çünkü CLI/API yok, sadece aynı tarayıcı arayüzünü yerelde sunuyor.
  **neden:** Kullanıcı `00_Context/_pdf` altına PDF ekleyip madde 4 protokolüyle işletmeden önce dönüştürme aracı aradı; bu bilgi tekrar aynı aracı önerebilmek için kalıcı hale getirildi.
