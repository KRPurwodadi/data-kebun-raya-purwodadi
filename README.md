# Data Cleaning & Analisis Koleksi Tumbuhan Kebun Raya Purwodadi

## 📋 Deskripsi Project

Project ini bertujuan untuk:
- **Membersihkan data** koleksi tumbuhan Kebun Raya Purwodadi yang masih inconsistent
- **Standardisasi nama** berdasarkan referensi WCVP (World Checklist of Vascular Plants) dan GBIF
- **Mengatasi masalah data**:
  - Typo pada nama spesies dan genus
  - Data `indet` (indeterminata) - spesies belum diketahui (nama Jenis masih "Sp.")
  - Data `indet` suku - genus kosong atau belum diketahui
  - Menganalisis status IUCN
  - Menghitung jumlah spesimen, spesies, genus, dan family

## 📊 Data Source

- **File**: `Data_KR_Purwodadi.xlsx`
- **Lokasi**: `C:\Users\Lenovo\Downloads`
- **Sheet**: "Data Koleksi_KR_Lokasi" (Sheet 1)
- **Referensi Validasi**:
  - WCVP: https://powo.science.kew.org/
  - GBIF: https://www.gbif.org/

## 📁 Struktur Folder

```
data-kebun-raya-purwodadi/
├── README.md                          # Dokumentasi utama
├── 01_setup_environment.R             # Setup library dan konfigurasi
├── 02_data_loading.R                  # Load data dari Excel
├── 03_data_exploration.R              # Explorasi dan profiling data
├── 04_data_cleaning.R                 # Cleaning dan standardisasi
├── 05_data_validation.R               # Validasi dengan WCVP/GBIF
├── 06_analysis.R                      # Analisis deskriptif
├── data/                              # Folder data
│   ├── raw/                           # Data original
│   └── cleaned/                       # Data setelah cleaning
└── output/                            # Hasil analisis
    ├── plots/
    └── reports/
```

## 🎓 Panduan Pembelajaran

### Tahap 1: Setup Environment
- Buka file `01_setup_environment.R`
- Install semua library yang diperlukan

### Tahap 2: Data Loading
- Buka file `02_data_loading.R`
- Pelajari cara membaca file Excel menggunakan `readxl`

### Tahap 3: Data Exploration
- Buka file `03_data_exploration.R`
- Pahami struktur dan karakteristik data

### Tahap 4: Data Cleaning
- Buka file `04_data_cleaning.R`
- Lakukan pembersihan dan standardisasi data

### Tahap 5: Validation & Analysis
- Validasi data dengan referensi WCVP/GBIF
- Lakukan analisis deskriptif

## 🛠️ Tools yang Digunakan

- **R 4.6.1**
- **RStudio** (IDE)
- **readxl** - Membaca file Excel
- **tidyverse** - Data manipulation (dplyr, tidyr, ggplot2)
- **stringr** - String manipulation
- **data.table** - Fast data processing
- **taxize** - Botanical data API
- **ggplot2** - Visualisasi

## 📝 Catatan Penting

Setiap script dilengkapi dengan:
- Penjelasan (comments) detail
- Contoh fungsi R yang sering digunakan
- Best practices untuk data analyst
- Troubleshooting tips

## 🚀 Quick Start

```r
# 1. Jalankan setup
source("01_setup_environment.R")

# 2. Load data
source("02_data_loading.R")

# 3. Explore data
source("03_data_exploration.R")

# 4. Cleaning data
source("04_data_cleaning.R")
```

---

**Last Updated**: 2024
**Author**: KRPurwodadi
