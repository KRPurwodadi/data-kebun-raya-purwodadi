# ============================================================================
# SCRIPT 01: SETUP ENVIRONMENT
# ============================================================================
# Deskripsi: Script untuk menginstall dan load semua library yang diperlukan
# Author: KRPurwodadi
# Date: 2024
# ============================================================================

# PENJELASAN AWAL:
# Script ini harus dijalankan PERTAMA kali sebelum script lainnya.
# Fungsinya:
# 1. Install library yang diperlukan (hanya perlu 1x)
# 2. Load library ke dalam session R (perlu dilakukan setiap kali membuka RStudio)

# ============================================================================
# BAGIAN 1: INSTALL LIBRARY (Jalankan sekali saja)
# ============================================================================

# Uncomment (hapus tanda #) baris di bawah jika belum pernah install
# install.packages("readxl")      # Untuk membaca file Excel
# install.packages("tidyverse")   # Paket lengkap untuk data manipulation
# install.packages("stringr")     # Untuk manipulasi string/teks
# install.packages("data.table")  # Untuk fast data processing
# install.packages("ggplot2")     # Untuk membuat visualisasi
# install.packages("DT")          # Untuk menampilkan tabel interaktif

# ============================================================================
# BAGIAN 2: LOAD LIBRARY (Jalankan setiap kali membuka RStudio)
# ============================================================================

# Library untuk membaca file Excel
library(readxl)

# Library untuk data manipulation dan visualization
library(tidyverse)      # Memuat dplyr, tidyr, ggplot2, readr, purrr, tibble
library(dplyr)          # Data manipulation (select, filter, mutate, etc)
library(tidyr)          # Data tidying (pivot_longer, pivot_wider, etc)
library(ggplot2)        # Visualisasi data
library(stringr)        # Manipulasi string

# Library untuk fast data processing
library(data.table)

# Library untuk menampilkan tabel
library(DT)

# ============================================================================
# BAGIAN 3: FUNGSI HELPER YANG SERING DIGUNAKAN
# ============================================================================

# Fungsi untuk melihat struktur data secara singkat
lihat_struktur <- function(data) {
  cat("\n=== STRUKTUR DATA ===\n")
  str(data)
  cat("\n=== DIMENSI ===\n")
  cat("Baris:", nrow(data), "\nKolom:", ncol(data), "\n")
  cat("\n=== NAMA KOLOM ===\n")
  print(names(data))
}

# Fungsi untuk melihat statistik deskriptif
lihat_statistik <- function(data) {
  cat("\n=== STATISTIK DESKRIPTIF ===\n")
  summary(data)
}

# Fungsi untuk melihat data dengan lebih rapi
lihat_data <- function(data, n_rows = 10) {
  cat(sprintf("\n=== TAMPILAN %d BARIS PERTAMA ===\n", n_rows))
  print(head(data, n = n_rows))
}

# ============================================================================
# BAGIAN 4: KONFIGURASI
# ============================================================================

# Set working directory (folder kerja utama)
# Ganti path sesuai dengan lokasi folder project Anda
setwd("C:/Users/Lenovo/Downloads")  # Atau gunakan getwd() untuk melihat direktori saat ini

# Tampilkan direktori kerja saat ini
cat("Working Directory:\n")
print(getwd())

# ============================================================================
# TIPS PENGGUNAAN SCRIPT INI
# ============================================================================
# 
# 1. PERTAMA KALI SETUP:
#    - Uncomment (hapus #) pada bagian INSTALL LIBRARY
#    - Jalankan semua baris (Ctrl+A, kemudian Ctrl+Enter)
#    - Tunggu hingga semua library selesai diinstall
#
# 2. SETELAH SETUP AWAL:
#    - Bagian INSTALL LIBRARY bisa dikasih comment kembali (tambah #)
#    - Setiap kali membuka RStudio baru, jalankan script ini untuk load library
#
# 3. UNTUK MENJALANKAN SCRIPT:
#    - Blok kode yang ingin dijalankan
#    - Tekan Ctrl+Enter (Windows) atau Cmd+Enter (Mac)
#    - Atau klik tombol "Run" di toolbar RStudio
#
# ============================================================================

cat("\n✓ Setup Environment selesai!\n")
cat("Library sudah siap digunakan.\n")
cat("Lanjut ke script berikutnya: 02_data_loading.R\n\n")
