# Günce

Kalıcı oturum tarihçesi. Yalnızca oturum sonunda güncellenir (oturum başında okunmaz, Claude'un bağlamına otomatik dahil edilmez — bu dosya kullanıcının geçmişi takip etmesi içindir). Her girişte tarih ve genel başlık, altında maddeler halinde o oturumda yapılan işlere/tartışmalara atıflar bulunur. En yeni giriş en üstte.

---

## 2026-09-01 — Git Kurulumu, Dört Büyük Kaynak, Protokol Genişletmeleri

- Git deposu ilk kez kuruldu: identity ayarlandı, remote eklendi (github.com/alperenmiergin/LLM_Think-Tank), ilk commit ve push yapıldı
- Kural: commit/push artık sadece oturum kapanışında, tek seferde yapılıyor (önceki davranış: her değişiklikte ayrı commit — kullanıcı düzeltmesi)
- Tong Zhang'ın "Mathematical Analysis of Machine Learning Algorithms" kitabı işlendi: PDF-to-md dönüştürmeden kaynaklı bozukluklar giderildi, künyelendi, 23 bölümlük klasöre ayrıldı ([[00_Context/0_Zang_Mathematical_Analysis/0_index.md]])
- Bernhard Mehlig'in "Machine Learning with Neural Networks" kitabı işlendi: 5710 sahte kod bloğu işareti ve 68 gizli NUL byte temizlendi, künyelendi, 13 bölümlük klasöre ayrıldı ([[00_Context/0_Mehlig_Machine_Learning/0_index.md]])
- Susan Athey'nin NBER kitap bölümü "The Impact of Machine Learning on Economics" işlendi: sayfa/footer gürültüsü temizlendi, künyelendi ([[00_Context/0_Athey_Impact_of_Machine_Learning_on_Economics.md]])
- Tim Button ve Sean Walsh'ın "Philosophy and Model Theory" kitabı (Oxford University Press, 2018) eklendi — telif durumu (ticari yayınevi + gayriresmi GitHub kaynağı) kullanıcıya bildirildi, onay alındı, künyelendi, 22 parçaya bölündü ([[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]])
- Yeni protokoller claude.md'ye eklendi: madde 4.0 (kitap kaynaklarda telif kontrolü), madde 4.1 (büyük kaynak bölümleme), künyeye standart TR/EN özet ekleme kuralı
- `_pdf` klasörleri `.gitignore`'a eklendi (ham PDF'ler asla push edilmiyor)
- Hafıza sistemi ikiye ayrıldı: hafiza.md (aktif, dönüşerek ilerleyen durum) ve gunce.md (bu dosya — kalıcı, maddeler halinde tarihçe)

## 2026-08-31 — Proje Kurulumu ve İlk Üç Kaynak

- Proje klasör yapısı (00_Context, 01_Work-Table, 02-Outputs) ve protokoller (kaynak onayı, sözlük, hafıza) claude.md'de tanımlandı
- Frédéric Neyrat'ın "Occupying the Future: Time and Politics in the Era of Clairvoyance Societies" makalesi işlendi — tam metin temizlenip künyelendi ([[00_Context/0_Neyrat_Clairvoyance.md]])
- Dwarkesh Patel'in "The Rise and Fall of Agent Civilizations" yazısı künyelendi ([[00_Context/0_Dwarkesh_Agent_Civilizations.md]])
- Dan Williams'ın "Most Questions About AI Aren't About AI" yazısı künyelendi ([[00_Context/0_Williams_Most_Questions.md]])
- Bu üç kaynaktan altı terim sözlüğe eklendi: Ajan Medeniyeti, Akronia, Dividual, Düz Kronoloji, Kahinlik Toplumu, Yakın-Ayrıştırılabilirlik
- Öğrenilen kural: sözlüğe sadece kaynakta geçen terimler önerilir, kavram sentezi yapılmaz (kullanıcı düzeltmesi)
- Öğrenilen kural: yanıtlarda/dosyalarda şapkalı a (â) kullanılmaz
