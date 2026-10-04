# 📊 Omnichannel E-Commerce Data Warehouse & Executive BI Analytics

Bu proje; ham e-ticaret işlem, lojistik ve web etkinlik verilerinin (2.4M+ satır) Python kullanılarak işlenmesi, **Microsoft SQL Server** üzerinde kurumsal bir **Yıldız Şema (Star Schema)** veri ambarına dönüştürülmesi ve **Power BI** üzerinde çok boyutlu yönetici raporları ile görselleştirilmesini içeren uçtan uca bir Veri Mühendisliği ve İş Zekası (BI) çalışmasıdır.

---

## 🏗️ Proje Mimarisi
[Ham CSV Verileri]
│
▼ (Python - Pandas & NumPy)
[Veri Temizleme + Lojistik & Bütçe Simülasyonu]
│
▼ (SQLAlchemy - fast_executemany / PyODBC)
[MSSQL Server - Staging Katmanı (stg_*)]
│
▼ (T-SQL Views - Star Schema Modelleme)
[Analitik Katman: Fact & Dimension Tabloları]
│
▼ (DirectQuery / Import)
[Power BI Executive Dashboard]

---

## 🛠️ Kullanılan Teknolojiler

- **Veri İşleme & ETL:** Python (`Pandas`, `NumPy`, `SQLAlchemy`, `pyodbc`, `urllib`)
- **Veritabanı & DWH:** Microsoft SQL Server (MSSQL / Express), T-SQL
- **İş Zekası & Raporlama:** Microsoft Power BI, DAX
- **Geliştirme Ortamı:** Jupyter Notebook, SSMS (SQL Server Management Studio)

---

## 📂 Veri Ambarı Şeması (Star Schema)

Analitik sorgu performansını optimize etmek ve raporlama katmanını standardize etmek için aşağıdaki görünüm (View) mimarisi kurulmuştur:

### 🌟 Fact Tablosu
- **`Fact_Sales`**: Sipariş kimlikleri, müşteri, ürün, sipariş tarihi, satış geliri (`revenue`), uygulanan indirim oranı, kargo ve iade lojistik maliyetleri.

### 🧩 Dimension Tabloları
- **`dim_products`**: Ürün ID, departman (Men/Women), kategori ve ürün maliyetleri (`cost`).
- **`dim_customers`**: Kullanıcı ID, yaş, cinsiyet, ülke ve edinim kaynağı (`traffic_source`).
- **`dim_distribution`**: Dağıtım merkezi ID, merkez adı, coğrafi koordinatlar (`latitude`, `longitude`).

---

## 📈 Power BI Yönetici Panelleri & Önemli Metrikler

Rapor, işletmenin finansal, pazarlama ve operasyonel sağlığını gösteren 3 temel ekrandan oluşmaktadır:

### 1. Finansal & Operasyonel Performans Paneli
- **Toplam Brüt Ciro:** $10.87M
- **Net Ciro:** $10.29M
- **Toplam Operasyonel Maliyet:** $1.47M
- **Kategori Dağılımı:** En yüksek ciro getiren kategoriler *Outerwear & Coats*, *Jeans* ve *Sweaters* olarak öne çıkmaktadır.

### 2. Müşteri & Pazarlama Analizi
- **Ortalama Sepet Tutarı (AOV):** $82.28
- **Toplam Sipariş Hacmi:** 125.083 adet
- **Trafik Kanalları:** Trafiğin ve gelirin %70.13'ü **Search (Arama Motoru)**, %14.96'sı **Organik** kanallardan gelmektedir.
- **Ülke Kârlılık Matrisi:** Çin ($3.5M ciro), ABD ($2.35M ciro) ve Brezilya ($1.47M ciro) ortalama %85.7 kâr marjı ile en büyük pazarları oluşturmaktadır.

### 3. Tedarik Zinciri & İade Performansı
- **İade Oranı:** Siparişlerin %10'u (13.000+ sipariş) iade edilmiştir.
- **Sipariş Başına Ortalama Kargo Maliyeti:** $10.72
- **Sipariş Yaşam Döngüsü:**
  - Sevkiyat Yapıldı (Shipped): %30.19
  - Tamamlandı (Complete): %24.84
  - İşleniyor (Processing): %19.87
  - İptal Edildi (Cancelled): %15.09
  - İade Edildi (Returned): %10.00

---

## ⚙️ Kurulum ve Çalıştırma

### 1. Gereksinimler
Sisteminizde Python 3.10+, Microsoft SQL Server ve Power BI Desktop kurulu olmalıdır.

```bash
pip install pandas sqlalchemy pyodbc
