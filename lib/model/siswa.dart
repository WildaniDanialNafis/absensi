class Siswa {
  String nis;
  String nama;
  String? tempatLahir;
  DateTime? tanggalLahir;
  String? jenisKelamin;
  String? agama;
  String? noTelp;
  String? alamat;
  String kodeJurusan;
  String kodeKelas;

  Siswa({
    required this.nis,
    required this.nama,
    this.tempatLahir,
    this.tanggalLahir,
    this.jenisKelamin,
    this.agama,
    this.noTelp,
    this.alamat,
    required this.kodeJurusan,
    required this.kodeKelas,
  });

  factory Siswa.fromJson(Map<String, dynamic> json) {
    return Siswa(
      nis: json['nis'],
      nama: json['nama'],
      tempatLahir: json['tempat_lahir'],
      tanggalLahir: json['tanggal_lahir'] != null
          ? DateTime.parse(json['tanggal_lahir'])
          : null,
      jenisKelamin: json['jenis_kelamin'],
      agama: json['agama'],
      noTelp: json['no_telp'],
      alamat: json['alamat'],
      kodeJurusan: json['kode_jurusan'],
      kodeKelas: json['kode_kelas'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nis': nis,
      'nama': nama,
      'tempat_lahir': tempatLahir,
      'tanggal_lahir': tanggalLahir?.toIso8601String(),
      'jenis_kelamin': jenisKelamin,
      'agama': agama,
      'no_telp': noTelp,
      'alamat': alamat,
      'kode_jurusan': kodeJurusan,
      'kode_kelas': kodeKelas,
    };
  }

  @override
  String toString() {
    return 'Siswa(nis: $nis, nama: $nama, tempatLahir: $tempatLahir, tanggalLahir: $tanggalLahir, jenisKelamin: $jenisKelamin, agama: $agama, noTelp: $noTelp, alamat: $alamat, kodeJurusan: $kodeJurusan, kodeKelas: $kodeKelas)';
  }
}
