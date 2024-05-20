class Kelas {
  String kodeKelas;
  String namaKelas;
  String? keterangan;

  Kelas({
    required this.kodeKelas,
    required this.namaKelas,
    this.keterangan,
  });

  factory Kelas.fromJson(Map<String, dynamic> json) {
    return Kelas(
      kodeKelas: json['kode_kelas'],
      namaKelas: json['nama_kelas'],
      keterangan: json['keterangan'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kode_kelas': kodeKelas,
      'nama_kelas': namaKelas,
      'keterangan': keterangan,
    };
  }

  @override
  String toString() {
    return 'Kelas(kodeKelas: $kodeKelas, namaKelas: $namaKelas, keterangan: $keterangan)';
  }
}
