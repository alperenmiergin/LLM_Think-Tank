# Günce

Kalıcı oturum tarihçesi. Yalnızca oturum sonunda güncellenir (oturum başında okunmaz, Claude'un bağlamına otomatik dahil edilmez — bu dosya kullanıcının geçmişi takip etmesi içindir). Her girişte tarih ve genel başlık, altında maddeler halinde o oturumda yapılan işlere/tartışmalara atıflar bulunur. En yeni giriş en üstte.

---

## 2026-09-01 — PDF-to-Markdown Araştırması, AGI Künyesi ve avenox.lol Güvenlik Uyarısı

- Yerel PDF-to-Markdown dönüştürme seçenekleri araştırıldı: jzillmann/pdf-to-markdown reposu (kurulum, sınırlar, indirme yöntemi) ve kurulumsuz online sürümü pdf2md.morethan.io incelendi; ikisinin de yerleşik indirme butonu olmadığı, client-side (pdf.js) çalıştığı ve repo kurmanın CLI/API eksikliği nedeniyle fark yaratmadığı tespit edildi — hafiza.md'ye kalıcı referans olarak eklendi
- Claude Code'un tarayıcı otomasyonu (Claude in Chrome) olmadan bu dönüştürmeyi kendi başına yapamayacağı, repo kurulsa dahi aynı sınırın geçerli olduğu netleştirildi
- `00_Context/0_Morris-etc_ Levels_of_AGI.md` dosyasına künye protokolü (madde 4) uygulandı: 4 PDF/OCR kaynaklı yapısal hata düzeltildi (dipnot işaretinde düşen parantez/boşluk, sıra sayısında düşen boşluk, araya karışmış arXiv sayfa üstbilgisi satırı, kaynakçada 36 kez tekrarlanan "URLhttps" boşluk hatası), künye + TR/EN özet eklendi, kaynaklar.md'deki ilgili satır dosyaya işaret edecek şekilde güncellendi
- Kullanıcı onayıyla sözlüğe iki yeni terim eklendi: "Bash Betiği (Bash Script)" ve "Kanca (Hook)" (kaynak: kullanıcı tanımı, Claude Code'un hook mimarisi bağlamında)
- Kullanıcının paylaştığı avenox.lol/beyin.md incelendi: sayfanın kendini "Ben Claude Code'um" diyerek asistan gibi tanıttığı, kullanıcıyı çok adımlı bir röportaja çekip ortam bilgisi topladığı ve Windows tespitinde ayrı bir dosyaya (SETUP-WINDOWS.md, muhtemelen aynı domainden) yönlendirdiği görüldü; bu, prompt injection / ajan hedefli sosyal mühendislik deseni olarak kullanıcıya bildirildi
- Kullanıcı kaynağı güvenilir buluyor ve sistemi kurmak istiyor; oturum bu tartışmanın ortasında, avenox'un sistemini detaylı inceleyip resmi Claude Code hook altyapısıyla güvenli bir alternatif tasarlama kararıyla kapatıldı — devamı bir sonraki oturumda

## 2026-09-01 — AGI Araştırması ve Mimari Kırılım Tartışması

- AGI tanımı ve mevcut teknolojiyle ulaşılabilirliği araştırıldı; Google Astra ve Anthropic Fable 5 modelleri DeepMind'ın Levels of AGI çerçevesine göre değerlendirildi (henüz sözlüğe/kaynaklara işlenmeyen kısımlar dahil)
- Morris ve arkadaşlarının "Levels of AGI: Operationalizing Progress on the Path to AGI" makalesi kaynaklar.md'ye eklendi ([[00_Context/0_Morris-etc_ Levels_of_AGI.md]])
- Sözlüğe "Yapay Genel Zeka (Artificial General Intelligence, AGI)" terimi eklendi — kullanıcı onayı sadece bu kaynak ve bu terimle sınırlıydı
- Mevcut transformer mimarisinin yapısal sınırları (TC⁰ karmaşıklık sınıfı, ikinci dereceden ölçekleme, kalıcı hafıza yokluğu) ve olası kırılım yönleri (durum-uzayı modelleri/Mamba, LeCun'un JEPA'sı, nöro-sembolik yaklaşımlar, test-time compute/araç devri) araştırıldı
- Beş kaynak daha kaynaklar.md'ye eklendi: "On Limitations of the Transformer Architecture", "The End of Transformers?", LeCun'un "A Path Towards Autonomous Machine Intelligence" makalesi, Meta'nın I-JEPA duyurusu, "The Deterministic Horizon" — henüz sözlük terimine bağlanmadı
- Kullanıcı, kaynakları md olarak arşivleme çabasının nafile olup olmadığını sordu; cevapta arşivleme ile sentez (sözlük terimi çıkarma) arasındaki dengesizliğe dikkat çekildi — dört büyük kaynaktan (Zang, Mehlig, Athey, Button-Walsh) hâlâ tek terim çıkmamış durumda
- Kullanıcı bundan sonra kaynakları derinleştirerek ve not alarak ilerleme kararı aldı
- Oturum, kullanıcının açık isteğiyle istisnai olarak commit/push yapılmadan kapatıldı (paralel bir chatte devam ediliyor)

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
