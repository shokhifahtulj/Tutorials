# Uninstall OracleXE 10g (Windows)

Panduan sederhana untuk menghapus OracleXE 10g dari Windows.  
Tersedia dua cara: **otomatis (pakai script batch)** atau **manual (pakai CMD/Windows)**.

---

## 🔹 Cara 1 – Otomatis (Paling Mudah)
Gunakan file `remove_oracleXE.bat`.
📥 [Download remove_oracleXE.bat](https://raw.githubusercontent.com/shokhifahtulj/Tutorials/main/remove_oracleXE.bat)

1. Klik kanan pada `remove_oracleXE.bat` → pilih **Run as Administrator**  
2. Script akan otomatis:  
   - Menghentikan semua service OracleXE  
   - Menghapus service OracleXE (XE, Listener, JobScheduler, ClrAgent)  

Setelah selesai, lanjutkan ke langkah **hapus folder** (lihat langkah 3).

---

## 🔹 Cara 2 – Manual (CMD & Windows)
Jika ingin lakukan manual, ikuti langkah berikut:

### 2.1 Hentikan Service Oracle
Buka **CMD (Run as Administrator)** lalu jalankan perintah ini satu per satu:
```
net stop OracleServiceXE
net stop OracleXETNSListener
net stop OracleJobSchedulerXE
net stop OracleXEClrAgent
```

### 2.2 Hapus Service Oracle
Masih di CMD, ketik:
```
sc delete OracleServiceXE
sc delete OracleXETNSListener
sc delete OracleJobSchedulerXE
sc delete OracleXEClrAgent
```

### 2.3 Hapus Registry (Jika Masih Ada)
Jika service masih muncul:
1. Tekan **Win + R** → ketik `regedit` → Enter  
2. Pergi ke:
   ```
   HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services
   ```
3. Cari dan hapus folder:
   - OracleServiceXE  
   - OracleXETNSListener  
   - OracleJobSchedulerXE  
   - OracleXEClrAgent  

---

## 🔹 3. Hapus Folder Instalasi
Hapus folder Oracle dari drive Anda (lokasi biasanya):
```
C:\oraclexe
C:\app\oracle
D:\rpl\Oracle10g   (jika pernah instal di D:)
```

---

## 🔹 4. Bersihkan PATH Environment
1. Tekan **Win + R** → ketik `sysdm.cpl` → Enter  
2. Pilih tab **Advanced** → klik **Environment Variables**  
3. Pada bagian **System variables**, pilih `Path` → klik **Edit**  
4. Hapus baris yang berhubungan dengan Oracle, misalnya:
   ```
   C:\app\oracle\product\10.2.0\server\BIN
   ```

---

## 🔹 5. Restart Komputer
Terakhir, restart PC Anda agar semua perubahan diterapkan.

---

✅ Selesai! OracleXE 10g sudah berhasil dihapus dari Windows.
