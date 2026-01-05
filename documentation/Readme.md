# 🔐 Application Security Groups (ASG) for Medical Application Protection  
# 🔐 Zastosowanie Application Security Groups (ASG) do ochrony aplikacji medycznych

---

# 🇵🇱 Wersja Polska (PL)

## 📌 Opis projektu

Projekt polegał na wdrożeniu **Application Security Groups (ASG)** w środowisku Azure dla Poradni Zdrowia Psychicznego w powiecie wałeckim.  
Celem było zabezpieczenie aplikacji medycznych — **KS‑PPS, e‑Rejestracja oraz Gabinet.gov.pl** — poprzez logiczną segmentację ruchu sieciowego i eliminację ręcznego filtrowania po adresach IP.

Placówka korzysta z systemów medycznych działających w modelu hybrydowym (on‑prem + Azure), co wymagało stworzenia spójnej, skalowalnej i zgodnej z RODO architektury bezpieczeństwa.

---

## 🎯 Cele projektu

- Zastosowanie ASG do przypisania reguł bezpieczeństwa do grup aplikacji zamiast pojedynczych VM  
- Utworzenie logicznych grup: `asg-kspps`, `asg-rejestracja`, `asg-gabinet`  
- Konfiguracja NSG z regułami opartymi na ASG (HTTPS, SFTP, RDP)  
- Uproszczenie zarządzania bezpieczeństwem i skalowalności środowiska  
- Ochrona danych pacjentów zgodnie z RODO  

---

## 🧭 Kontekst organizacyjny

Poradnia obsługuje systemy:

- **KS‑PPS (Kamed)** — obsługa świadczeń medycznych  
- **e‑Rejestracja** — rejestracja pacjentów  
- **Gabinet.gov.pl** — integracja z systemami centralnymi (IKP, eRecepta, eWUŚ)  

Wcześniejsze filtrowanie po IP było:

- trudne w utrzymaniu,  
- podatne na błędy,  
- nieelastyczne przy zmianach infrastruktury,  
- ryzykowne dla danych medycznych.

---

## 🏗️ Architektura rozwiązania

- **Azure Virtual Network**: `vnet-poradnia`  
- **Podsieć**: `subnet-app`  
- **Maszyny wirtualne**:  
  - `vm-kspps`  
  - `vm-rejestracja`  
  - `vm-gabinet`  
- **Application Security Groups**:  
  - `asg-kspps`  
  - `asg-rejestracja`  
  - `asg-gabinet`  
- **Network Security Group**: `nsg-app`  
- **Reguły NSG oparte na ASG** (HTTPS, SFTP, RDP)

---

## 🛠️ Etapy wdrożenia

1. Utworzenie sieci VNet i podsieci  
2. Utworzenie trzech maszyn wirtualnych z IIS  
3. Instalacja aplikacji medycznych  
4. Utworzenie ASG  
5. Przypisanie ASG do interfejsów VM  
6. Utworzenie NSG i dodanie reguł opartych na ASG  
7. Powiązanie NSG z podsiecią  
8. Testy dostępności aplikacji  

---

## 🔍 Rezultaty wdrożenia

- Logiczna segmentacja ruchu aplikacji  
- Eliminacja ręcznego filtrowania po IP  
- Łatwe dodawanie nowych VM bez zmian w NSG  
- Zmniejszenie ryzyka błędów administracyjnych  
- Ochrona danych pacjentów zgodnie z RODO  
- Lepsza integracja z systemami zewnętrznymi (SZOI, Gabinet.gov.pl, eWUŚ, eRecepta)

---

## 🧩 Technologie

- Azure Virtual Network  
- Network Security Groups (NSG)  
- Application Security Groups (ASG)  
- Azure Virtual Machines  
- IIS / Windows Server  
- Systemy medyczne: KS‑PPS, e‑Rejestracja, Gabinet.gov.pl  

---

# 🇬🇧 English Version (EN)

## 📌 Project Description

This project implemented **Application Security Groups (ASG)** in Azure for the Mental Health Clinic in Wałcz County.  
The goal was to secure medical applications — **KS‑PPS, e‑Registration, and Gabinet.gov.pl** — by introducing logical network segmentation and eliminating manual IP‑based filtering.

The clinic operates medical systems in a hybrid environment (on‑prem + Azure), requiring a scalable, secure, and GDPR‑compliant network architecture.

---

## 🎯 Project Goals

- Use ASG to assign security rules to application groups instead of individual VMs  
- Create logical groups: `asg-kspps`, `asg-rejestracja`, `asg-gabinet`  
- Configure NSG with ASG‑based rules (HTTPS, SFTP, RDP)  
- Simplify security management and scaling  
- Protect patient data in compliance with GDPR  

---

## 🧭 Organizational Context

The clinic uses:

- **KS‑PPS (Kamed)** — medical service management  
- **e‑Registration** — patient scheduling  
- **Gabinet.gov.pl** — integration with national e‑health systems  

The previous IP‑based filtering approach was:

- difficult to maintain,  
- error‑prone,  
- inflexible during infrastructure changes,  
- risky for sensitive medical data.

---

## 🏗️ Architecture Overview

- **Azure Virtual Network**: `vnet-poradnia`  
- **Subnet**: `subnet-app`  
- **Virtual Machines**:  
  - `vm-kspps`  
  - `vm-rejestracja`  
  - `vm-gabinet`  
- **Application Security Groups**:  
  - `asg-kspps`  
  - `asg-rejestracja`  
  - `asg-gabinet`  
- **Network Security Group**: `nsg-app`  
- **ASG‑based NSG rules** (HTTPS, SFTP, RDP)

---

## 🛠️ Implementation Steps

1. Create VNet and subnet  
2. Deploy three Windows Server VMs with IIS  
3. Install medical applications  
4. Create ASG groups  
5. Assign ASG to VM NICs  
6. Create NSG and add ASG‑based rules  
7. Associate NSG with the subnet  
8. Test application availability  

---

## 🔍 Results

- Logical segmentation of application traffic  
- No more manual IP‑based filtering  
- Easy onboarding of new VMs without NSG changes  
- Reduced risk of configuration errors  
- GDPR‑compliant protection of patient data  
- Improved integration with external systems (SZOI, Gabinet.gov.pl, eWUŚ, ePrescription)

---

## 🧩 Technologies Used

- Azure Virtual Network  
- Network Security Groups (NSG)  
- Application Security Groups (ASG)  
- Azure Virtual Machines  
- IIS / Windows Server  
- Medical systems: KS‑PPS, e‑Registration, Gabinet.gov.pl  

---

# 🏁 Summary / Podsumowanie

Projekt znacząco zwiększył bezpieczeństwo aplikacji medycznych poprzez zastosowanie ASG i logiczną segmentację ruchu.  
The project significantly improved medical application security through ASG‑based segmentation and simplified network management.

