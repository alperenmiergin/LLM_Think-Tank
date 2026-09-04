# Astra'nın AGI Seviyesi Değerlendirmesi (Taslak)

Durum: onay bekliyor, 02-Outputs'a taşınmadı.

## Amaç

OpenAI'ın 3 Eylül 2026'da duyurduğu GPT-6 Astra modelini, Morris ve ark.'nin (Google DeepMind, ICML 2024) "Levels of AGI" çerçevesine göre değerlendirmek.

## Kullanılan Kaynaklar

- GPT-6 Astra: A new generation of intelligence, OpenAI resmi duyuru sayfası (openai.com), onay: 2026-09-04
- GPT-6 Astra Model, OpenAI API dokümantasyonu (developers.openai.com), onay: 2026-09-04
- Position: Levels of AGI for Operationalizing Progress on the Path to AGI, Morris ve ark., ICML 2024 / arXiv:2311.02462, onay: 2026-09-01 ([[00_Context/0_Morris-etc_ Levels_of_AGI.md]])
- Introducing Claude Fable 5.1 and Claude Mythos 5.1, Anthropic resmi duyuru sayfası (anthropic.com), onay: 2026-09-04
- GPT-6 Astra (max) vs Claude Fable 5.1: Model Comparison, artificialanalysis.ai, onay: 2026-09-04
- Claude Fable 5.1 vs GPT-6 Astra: Benchmarks, Pricing & Which Is Better in 2026, llm-stats.com, onay: 2026-09-04

## Morris ve ark. Çerçevesi (Kısa Hatırlatma)

Çerçeve iki eksenli bir matris kuruyor:

- **Performans (derinlik):** Emerging (beceriksiz insan seviyesi veya biraz üstü) / Competent (yetkin yetişkinlerin 50. persentili) / Expert (90. persentil) / Exceptional (99. persentil) / Superhuman (insanların %100'ünü geçen)
- **Genellik (genişlik):** Narrow (tek görev veya dar görev kümesi) / General (metabilişsel görevler dahil, görevlerin geniş bir yelpazesi)

Makale, Eylül 2023 itibariyle ChatGPT/Bard/Llama2/Gemini gibi sistemleri "Level 1 General AI (Emerging AGI)" olarak sınıflandırıyor; "Competent AGI" ve üstü seviyelerin o tarihte henüz hiçbir kamuya açık sistem tarafından ulaşılmadığını belirtiyor. Ayrıca altı ilkeden ikisi bu değerlendirme için özellikle belirleyici:

- **İlke 2 (Genellik ve Performans birlikte):** Tek başına yüksek performans veya tek başına geniş kapsam yetmez, ikisi birlikte ölçülmeli
- **İlke 5 (Ekolojik geçerlilik):** Değerlendirme, kolayca otomatikleştirilebilen dar benchmarklardan çok gerçek dünya görevlerine yakın olmalı

## Astra Hakkında Onaylanmış Kaynaklardan Doğrulanmış Veri

- Computer use, browsing, yazılım mühendisliği, siber güvenlik, bilim ve profesyonel iş alanlarında "state-of-the-art" performans iddiası
- ARC-AGI-3 benchmarkında %99.9 skor
- FrontierMath Tier 4'te %98 skor
- OpenAI'ın "en hizalı" modeli olduğu, kullanıcı niyetini anlamada önemli iyileşme iddiası
- Önce Daybreak Access programındaki kurumlara, sonra ChatGPT Plus/Pro/Business/Enterprise ve API'ye kademeli erişim

## Değerlendirme (Spekülatif — Kaynaklarda Doğrudan Yer Almayan Yorum)

Aşağıdaki değerlendirme benim yorumumdur, ne OpenAI'ın ne Morris ve ark.'nin doğrudan ifadesidir; spekülasyon olarak işaretli.

**Performans boyutu:** ARC-AGI-3 ve FrontierMath skorları yüksek, ancak Morris çerçevesi performansı "yetkin yetişkinlerin persentili" gibi insan-referanslı ölçüyor. OpenAI'ın resmi kaynakları bu benchmark skorlarını böyle bir persentile çevirmiyor — yani elimizdeki veri performans eksenine doğrudan yerleştirilemiyor, sadece dar bir görev kümesinde (bu iki benchmark) çok yüksek performans olduğu söylenebilir.

**Genellik boyutu:** Resmi kaynaklar "computer use, browsing, yazılım mühendisliği, siber güvenlik, bilim, profesyonel iş" gibi geniş bir alan listesi veriyor, bu İlke 2'nin genellik bileşeni açısından olumlu bir işaret. Ancak Morris ve ark.'nin vurguladığı metabilişsel kriterler (yeni beceri öğrenme, ne zaman yardım istenceğini bilme, teori-of-mind) hakkında onaylanmış kaynaklarda hiçbir veri yok.

**Ekolojik geçerlilik (İlke 5):** ARC-AGI-3 ve FrontierMath, makalenin "kolayca otomatikleştirilebilen/ölçülebilen" olarak uyardığı türden standart benchmarklar; Morris ve ark. bu tür ölçülerin AGI'nin değerli bulacağı tüm beceri setini yakalamayabileceğini açıkça belirtiyor. Dolayısıyla bu iki skor, tek başına AGI değerlendirmesi için yeterli ekolojik geçerliliğe sahip olmayabilir.

**Otonomi:** Onaylanmış kaynaklarda Astra'nın Morris ve ark.'nin Otonomi Seviyeleri (Araç / Danışman / İşbirlikçi / Uzman / Ajan) tablosunda nereye oturduğunu belirten bir bilgi yok.

**Özet yorum:** Elimizdeki onaylanmış veriyle Morris çerçevesine göre Astra'ya kesin bir seviye atamak mümkün değil. İki benchmarkta çok yüksek skor, dar bir performans derinliği kanıtı sunuyor ama genellik/persentil/metabilişsel boyutlarda karşılaştırmalı veri eksik. OpenAI'ın kendisi de (onaylı kaynaklarda) resmi bir AGI ilanı yapmıyor, "olabilir" diyor — bu temkinlilik, çerçevenin kendi ölçüm boşluğuyla tutarlı.

## Fable 5.1 ile Kıyas

Fable 5.1 (Anthropic, 1 Eylül 2026), Astra'dan iki gün önce yayınlandı. Onaylanmış kaynağına göre kodlama (uzun/karmaşık, tüm kod tabanını kapsayan görevler) ve bilimsel iş akışlarına (deney tasarımı, yoğun tablo/diyagram okuma) odaklanan bir güncelleme olarak konumlandırılmış; düşük/orta efor ayarında Fable 5'e göre benzer veya daha iyi sonuçla yaklaşık %25 daha ucuz. Mythos 5.1, aynı model ama siber güvenlik/yaşam bilimleri için ek güvenlik önlemleriyle sadece güvenilir erişim programlarında sunuluyor. Anthropic'in kendi duyurusunda AGI çerçevesinde bir konumlandırma yok — bu, OpenAI'ın Astra için yaptığı "AGI olabilir" çerçevelemesiyle doğrudan bir karşıtlık oluşturuyor (kendisi spekülasyon değil, iki resmi kaynağın çerçeveleme farkı).

### Benchmark Tablosu (Artificial Analysis + llm-stats.com)

| Ölçüt | Astra (max) | Fable 5.1 (Adaptive Reasoning, Max Effort) |
|---|---|---|
| Artificial Analysis Intelligence Index | 61 | 66 |
| FrontierMath Tier 4 (v2) | %97.6 | %87.8 |
| AutomationBench | %41.4 | %31.4 |
| Terminal-Bench Science 0.1 | %64.6 | %52.6 |
| BenchCAD | %95.9 | %84.3 |
| Coding Agent Index | 67 | 70 |
| OSWorld 2.0 | — | Fable 5.1 önde |
| Standart girdi/çıktı fiyatı | $10 / $50 per milyon token | $10 / $50 per milyon token (aynı) |
| Önbellek okuma fiyatı | $1.00 per milyon token | $0.25 per milyon token |

### Kapasite Bazında Karşılaştırma

**Matematik/bilimsel akıl yürütme:** Astra, FrontierMath Tier 4'te ve Terminal-Bench Science'da açık farkla önde. Bu, dar/teknik/nicel doğrulanabilir görevlerde derinlik (Morris performans ekseni) açısından Astra'nın güçlü olduğunu gösteriyor.

**Otomasyon/ajanlık görevleri (araç kullanımı, exploit/güvenlik görevleri):** AutomationBench ve BenchCAD'de de Astra önde — bu iki benchmark, kapalı/net başarı kriterine sahip teknik-mühendislik görevleri ölçüyor.

**Genel zeka endeksi ve kodlama-ajan performansı:** Fable 5.1, Artificial Analysis Intelligence Index'te ve Coding Agent Index'te önde; bu endeksler tek bir dar beceriden çok geniş bir görev karışımını ağırlıklıyor.

**Bilgisayar kullanımı (OSWorld 2.0):** Fable 5.1 önde — gerçek işletim sistemi arayüzlerinde gezinme/görev tamamlama gibi Morris'in "ekolojik geçerlilik" (İlke 5) vurgusuna daha yakın bir görev türü.

### Spekülatif Sentez (Kaynaklarda Doğrudan Yer Almayan Yorum)

Aşağıdaki yorum benim sentezimdir, hiçbir onaylı kaynakta böyle ifade edilmiyor.

Skor dağılımı, iki laboratuvarın farklı bir optimizasyon eksenini işaret ediyor olabilir: Astra, kapalı/nicel doğrulanabilir dar-teknik benchmarklarda (matematik, CAD, exploit/otomasyon) derinlik peşinde gibi görünüyor — Morris çerçevesindeki performans eksenine ağırlık veren bir strateji. Fable 5.1 ise genel zeka endeksi, kodlama-ajan ve bilgisayar-kullanımı gibi daha geniş/ekolojik olarak geçerli görev türlerinde öne çıkıyor — bu da genellik eksenine daha yakın bir profil. Eğer bu okuma doğruysa, iki model Morris matrisinde aynı hücreye değil, matrisin farklı kenarlarına (biri derinlik ağırlıklı, diğeri genişlik ağırlıklı) yerleşiyor olabilir; ancak ikisi için de insan-persentili referanslı veri olmadığı için bu sadece bir eğilim okuması, kesin bir seviye ataması değil.

Aynı şekilde, OpenAI'ın Astra'yı açıkça "AGI olabilir" diye çerçevelemesine karşın Anthropic'in Fable 5.1 duyurusunda AGI kelimesini hiç kullanmaması da spekülatif olarak yorumlanabilir: bu, iki şirketin aynı dönemde benzer bir yetenek sıçramasını farklı iletişim stratejileriyle sunmayı tercih ettiğini gösteriyor olabilir — biri AGI anlatısını öne çıkarırken, diğeri somut ürün/maliyet iyileştirmesi anlatısını tercih ediyor. Bu yorum, hiçbir onaylı kaynakta doğrudan tartışılmıyor.

## Eksik Veri / Açık Sorular

- Astra'nın insan-referanslı persentil karşılaştırması (Morris performans ekseni) hiçbir onaylı kaynakta yok
- Geniş, çeşitli görev setinde (sadece iki benchmark değil) performans verisi eksik
- Metabilişsel yetenekler (yeni beceri öğrenme, yardım isteme, teori-of-mind) hakkında veri yok
- Otonomi seviyesi / dağıtım biçimi hakkında net bilgi yok
- Fable 5.1 için de insan-persentili referanslı performans verisi yok; iki model arasındaki benchmark farkının Morris performans/genellik eksenlerine nasıl çevrildiği hâlâ açık

## Sonuç

Bu taslak, kullanıcı onayına sunulmak üzere hazırlandı. Onaylanırsa 02-Outputs altına taşınabilir veya ayrı bir analiz olarak kalabilir; sözlüğe yeni terim eklenmesi gerekmiyor, mevcut "Yapay Genel Zeka (AGI)" maddesi yeterli.
