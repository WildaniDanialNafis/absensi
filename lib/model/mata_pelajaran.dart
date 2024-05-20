class MataPelajaran {
  String kodeMapel;
  String namaMapel;

  MataPelajaran({
    required this.kodeMapel,
    required this.namaMapel,
  });

  factory MataPelajaran.fromJson(Map<String, dynamic> json) {
    return MataPelajaran(
      kodeMapel: json['kode_mapel'],
      namaMapel: json['nama_mapel'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kode_mapel': kodeMapel,
      'nama_mapel': namaMapel,
    };
  }

  @override
  String toString() {
    return 'MataPelajaran(kodeMapel: $kodeMapel, namaMapel: $namaMapel)';
  }
}
