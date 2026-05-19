Project dibimbing dan cara menjalankan skrip
# Recon Automation

## Deskripsi
Project automation reconnaissance untuk:
- Enumerasi subdomain
- Deduplikasi subdomain menggunakan anew
- Pengecekan live hosts menggunakan httpx

---

# Struktur Direktori
recon-automation-michelle/
├── input/
│   └── domains.txt
├── output/
│   ├── all-subdomains.txt
│   └── live.txt
├── scripts/
│   └── recon-auto.sh
├── logs/
│   ├── progress.log
│   └── errors.log
└── README.md
```

Install Tools
anew
go install github.com/tomnomnom/anew@latest

assetfinder
go install github.com/tomnomnom/assetfinder@latest

httpx
go install github.com/projectdiscovery/httpx/cmd/httpx@latest

Tambahkan PATH
export PATH=$PATH:~/go/bin


Cara Menjalankan Script
Masuk ke folder project:
cd recon-automation-michelle

Jadikan executable:
chmod +x scripts/recon-auto.sh

Jalankan script:
./scripts/recon-auto.sh

<img width="479" height="290" alt="image" src="https://github.com/user-attachments/assets/67fd5a38-6f4b-4fe3-a17c-875007155913" />

<img width="479" height="289" alt="image" src="https://github.com/user-attachments/assets/b6471749-75a8-4e63-b145-36723c7d64fb" />

<img width="479" height="65" alt="image" src="https://github.com/user-attachments/assets/8a484389-6705-4ce3-a09b-2c8c986e68b2" />

<img width="482" height="211" alt="image" src="https://github.com/user-attachments/assets/e2233577-c27f-4de7-87eb-7b91f13b37e6" />
## hasil output tidak muncul, namun tidak ada error dan scripts dapat berjalan dengan baik
