# 🔐 Security Policy

## Supported Versions

Kami hanya mendukung versi utama terbaru dari repository ini:

| Version | Status     |
| ------- | ---------- |
| 1.x     | ✅ Active  |
| < 1.0   | ❌ No support |

---

## 🔒 Keamanan Kontrak & Bot

Untuk memastikan keamanan maksimum dalam proyek flash loan arbitrage ini, berikut langkah-langkah yang telah dan harus dilakukan:

### ✅ Smart Contract
- [x] Menggunakan library standar dari [OpenZeppelin](https://openzeppelin.com/contracts/)
- [x] Menghindari reentrancy dengan `nonReentrant` modifier
- [x] Validasi input flash loan agar tidak disalahgunakan
- [x] Membatasi akses `onlyOwner` pada fungsi sensitif
- [x] Transaksi atomic (semua berhasil atau semuanya revert)
- [ ] Integrasi verifikasi dengan Chainlink Price Feeds (rekomendasi)

### ✅ Bot dan Frontend
- [x] Jangan pernah expose `PRIVATE_KEY` atau `INFURA_API_KEY` di public repo
- [x] Gunakan file `.env` dan `dotenv` untuk manajemen key
- [x] Hindari hardcoded contract address/token
- [x] Rate limit pemanggilan API agar tidak dibanned (1inch, Coingecko, dll)

---

## 🧪 Tools Audit

Rekomendasi tools untuk audit smart contract secara lokal:

| Tool        | Deskripsi                             |
| ----------- | ------------------------------------- |
| **MythX**   | Deteksi bug seperti overflow/reentrancy |
| **Slither** | Analisa statis (open-source)          |
| **Securify**| Audit dari ETH Zurich, automated scan |
| **Tenderly**| Debug dan simulasikan transaksi       |

---

## 📣 Melaporkan Kerentanan

Jika Anda menemukan potensi celah keamanan, mohon:

1. Jangan buat issue publik.
2. Kirim email ke: **kongali1720[at]protonmail.com**
3. Sertakan:
   - Penjelasan singkat
   - Bukti eksploitasi / PoC
   - Link file atau baris kode terkait

Kami akan respon dalam waktu **≤48 jam**.

---

## 📘 Referensi

- [Solidity Security Patterns – OpenZeppelin](https://docs.openzeppelin.com/contracts/4.x/security)
- [Ethereum Smart Contract Best Practices](https://consensys.github.io/smart-contract-best-practices/)
- [DeFi Security Checklist (Dedaub)](https://blog.dedaub.com/defi-security-checklist-dedaub-38c63e5094ca)

---

🛡️ *Stay safe, code safe.*  
Terima kasih telah membantu menjaga keamanan komunitas DeFi!
