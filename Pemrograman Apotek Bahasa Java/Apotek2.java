package pkg1_contohprogram;

import java.util.Scanner;

class Obat {
    String namaObat;
    int harga;
    int stok;

    Obat(String namaObat, int harga, int stok) {
        this.namaObat = namaObat;
        this.harga = harga;
        this.stok = stok;
    }
}

public class Apotek2 {
    private static final int JUMLAH_OBAT = 50;
    private static Obat[] inventori = new Obat[JUMLAH_OBAT];

    public static void main(String[] args) {
        inisialisasiInventori();

        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Masukkan nama Anda: ");
        String namaPembeli = scanner.nextLine();

        inisialisasiInventori();
        
        int pilihan;
        do {
            System.out.println("\nSelamat datang di Apotek Kema");
            System.out.println("1. Obat Tersedia");
            System.out.println("2. Cari Obat");
            System.out.println("3. Beli Obat");
            System.out.println("4. Keluar");
            System.out.print("Masukkan pilihan Anda: ");
            pilihan = scanner.nextInt();

            switch (pilihan) {
                case 1:
                    tampilkanInventori();
                    break;
                case 2:
                    cariObat(scanner);
                    break;
                case 3:
                    beliObat(scanner);
                    break;
                case 4:
                    System.out.println("Terima kasih telah mengunjungi Apotek Kema.");
                    break;
                default:
                    System.out.println("Pilihan tidak valid. Silakan coba lagi.");
                    break;
            }
        } while (pilihan != 4);
        scanner.close();
    }

    private static void inisialisasiInventori() {
        // Inisialisasi data obat dalam inventori
        inventori[0] = new Obat("Paracetamol", 5000, 100);
        inventori[1] = new Obat("Amoxicillin", 10000, 50);
        inventori[2] = new Obat("Omeprazole", 8000, 75);
        inventori[3] = new Obat("Ibuprofen", 7000, 60);
        inventori[4] = new Obat("Cough Syrup", 12000, 40);
        inventori[5] = new Obat("Vitamin C", 1500, 200);
        inventori[6] = new Obat("Loratadine", 9000, 30);
        inventori[7] = new Obat("Metformin", 15000, 20);
        inventori[8] = new Obat("Atorvastatin", 20000, 15);
        inventori[9] = new Obat("Cetirizine", 5000, 80);
        // Tambahkan inisialisasi data obat lainnya di sini sesuai kebutuhan
    }

    private static void tampilkanInventori() {
        urutkanInventori(); // Panggil metode untuk mengurutkan inventori sebelum ditampilkan
        System.out.println("Nama Obat\t\tHarga\tStok");
        for (int i = 0; i < JUMLAH_OBAT; i++) {
            if (inventori[i] != null) {
                System.out.println(inventori[i].namaObat + "\t\t" + inventori[i].harga + "\t" + inventori[i].stok);
            }
        }
    }

    private static void cariObat(Scanner scanner) {
        scanner.nextLine(); // Membaca newline yang tidak terbaca sebelumnya
        System.out.print("Masukkan nama obat yang ingin dicari: ");
        String namaObatCari = scanner.nextLine();
        boolean ditemukan = false;
        for (int i = 0; i < JUMLAH_OBAT; i++) {
            if (inventori[i] != null && inventori[i].namaObat.equalsIgnoreCase(namaObatCari)) {
                System.out.println("Obat dengan nama " + namaObatCari + " ditemukan.");
                System.out.println("Harga: " + inventori[i].harga);
                System.out.println("Stok: " + inventori[i].stok);
                ditemukan = true;
                break;
            }
        }
        if (!ditemukan) {
            System.out.println("Obat dengan nama " + namaObatCari + " tidak ditemukan.");
        }
    }

    private static void beliObat(Scanner scanner) {
    scanner.nextLine(); // Membaca newline yang tidak terbaca sebelumnya

    boolean selesaiBeli = false;

    do {
        System.out.print("Masukkan nama obat yang ingin dibeli (ketik 'selesai' untuk mengakhiri pembelian): ");
        String namaObatBeli = scanner.nextLine();

        if (namaObatBeli.equalsIgnoreCase("selesai")) {
            selesaiBeli = true;
            break;
        }

        boolean ditemukan = false;

        for (int i = 0; i < JUMLAH_OBAT; i++) {
            if (inventori[i] != null && inventori[i].namaObat.equalsIgnoreCase(namaObatBeli)) {
                System.out.print("Masukkan jumlah yang ingin dibeli: ");
                int jumlahBeli = scanner.nextInt();
                if (jumlahBeli <= inventori[i].stok) {
                    int totalHarga = inventori[i].harga * jumlahBeli;
                    System.out.println("Total harga untuk " + jumlahBeli + " " + namaObatBeli + " adalah " + totalHarga + " Rupiah.");
                    inventori[i].stok -= jumlahBeli;
                    System.out.println("Pembelian sukses. Stok " + namaObatBeli + " saat ini: " + inventori[i].stok);
                } else {
                    System.out.println("Maaf, stok obat tidak mencukupi untuk jumlah yang diminta.");
                }
                ditemukan = true;
                break;
            }
        }
        if (!ditemukan) {
            System.out.println("Obat dengan nama " + namaObatBeli + " tidak ditemukan.");
        }

        scanner.nextLine(); // Membaca newline setelah nextInt()
    } while (!selesaiBeli);
}

    private static void urutkanInventori() {
        for (int i = 0; i < JUMLAH_OBAT - 1; i++) {
            int indeksMin = i;
            for (int j = i + 1; j < JUMLAH_OBAT; j++) {
                if (inventori[j] != null && inventori[indeksMin] != null &&
                    inventori[j].namaObat.compareToIgnoreCase(inventori[indeksMin].namaObat) < 0) {
                    indeksMin = j;
                }
            }
            if (indeksMin != i && inventori[i] != null) {
                Obat temp = inventori[i];
                inventori[i] = inventori[indeksMin];
                inventori[indeksMin] = temp;
            }
        }
    }
}