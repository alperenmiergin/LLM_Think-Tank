# Hafıza

Bu dosya oturumlar arası devamlılığı sağlar. Her oturum başında okunur, her oturum sonunda güncellenir — güncel duruma göre dönüşerek ilerler, eski özet üzerine yazılır. Talimat: bu dosyanın güncellenmesi kullanıcı isteğine bağlı değildir, oturum sonu rutininin sabit bir parçasıdır.

Kalıcı, maddeler halinde detaylı oturum tarihçesi için bkz. [[00_Context/gunce.md]] — o dosya sadece oturum sonunda yazılır, oturum başında okunmaz.

## Proje Kimliği (Sabit)

BDM/LLM araştırma ve düşünce üretim ortamı. Rol: araştırma ortağı. Amaç: kavram tartışması, kaynakla doğrulama, sözlükte kalıcılaştırma.

## Son Oturum Özeti

Git deposu ilk kez kuruldu (identity, remote, ilk commit/push) ve oturum sonu commit/push rutini claude.md'ye kalıcı kural olarak işlendi (sadece oturum kapanışında, tek seferde). Dört büyük kaynak eklenip işlendi: Zang'ın "Mathematical Analysis of Machine Learning Algorithms" ve Mehlig'in "Machine Learning with Neural Networks" kitapları (ikisi de PDF-to-md dönüştürmeden kaynaklı bozuklukları giderilip künyelendi, bölüm bazlı klasörlere ayrıldı), Athey'nin NBER kitap bölümü (sayfa/footer gürültüsü temizlendi) ve Button-Walsh'ın "Philosophy and Model Theory" kitabı (telif durumu kontrol edildi, kullanıcı onayıyla işlendi, 22 parçaya bölündü). Büyük kaynakları bölüm bazlı klasörlere ayırma protokolü (4.1) ve künyeye standart TR/EN özet ekleme kuralı bu oturumda kuruldu; dört kaynağın hepsine bu özet eklendi. Oturum sonunda hafıza sistemi ikiye ayrıldı: hafiza.md (güncel durum, dönüşerek ilerler) ve yeni gunce.md (kalıcı, maddeler halinde tarihçe, sadece oturum sonunda yazılır).

## Açık Konular (Threadler)

- LLM'lerle değişen tahakküm siyaseti üzerine düşünce silsilesi (Neyrat/Dwarkesh/Williams, altı terim) henüz bir analiz/deneme metnine dönüşmedi
- Zang, Mehlig, Athey, Button-Walsh kaynaklarından henüz hiç sözlük terimi onaylanmadı/eklenmedi — kaynaklar.md'de "Kullanıldığı Terimler" alanları hâlâ boş
- Button-Walsh kitabının reposu şu an public; kullanıcının GitHub arayüzünden private'a alması gerekiyor (gh CLI kurulu değil, otomatik yapılamadı)
- Button-Walsh kitabında sayfa numarası/koşu başlığı gibi yapısal OCR temizliği henüz yapılmadı (kapsam dışı bırakıldı, sadece bölümleme yapıldı)
- Oturum sonu push denemesi Claude Code'un izin sınıflandırıcısı tarafından bloklandı (büyük commit boyutu muhtemel sebep); commit yerelde hazır, push kullanıcı onayı/tekrar deneme bekliyor

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
