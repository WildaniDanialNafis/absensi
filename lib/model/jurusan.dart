class Jurusan {
  String kodeJurusan;
  String namaJurusan;

  Jurusan({
    required this.kodeJurusan,
    required this.namaJurusan,
  });

  factory Jurusan.fromJson(Map<String, dynamic> json) {
    return Jurusan(
      kodeJurusan: json['kode_jurusan'],
      namaJurusan: json['nama_jurusan'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kode_jurusan': kodeJurusan,
      'nama_jurusan': namaJurusan,
    };
  }

  @override
  String toString() {
    return 'Jurusan(kodeJurusan: $kodeJurusan, namaJurusan: $namaJurusan)';
  }
}
