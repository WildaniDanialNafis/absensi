class Absensi {
  String kodeAbsensi;
  String nis;
  String kodeMapel;
  String nip;
  String keterangan;
  DateTime tanggal;
  DateTime waktu;

  Absensi({
    required this.kodeAbsensi,
    required this.nis,
    required this.kodeMapel,
    required this.nip,
    required this.keterangan,
    required this.tanggal,
    required this.waktu,
  });

  factory Absensi.fromJson(Map<String, dynamic> json) {
    return Absensi(
      kodeAbsensi: json['kode_absensi'],
      nis: json['nis'],
      kodeMapel: json['kode_mapel'],
      nip: json['nip'],
      keterangan: json['keterangan'],
      tanggal: DateTime.parse(json['tanggal']),
      waktu: DateTime.parse(json['waktu']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kode_absensi': kodeAbsensi,
      'nis': nis,
      'kode_mapel': kodeMapel,
      'nip': nip,
      'keterangan': keterangan,
      'tanggal': tanggal.toIso8601String(),
      'waktu': waktu.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Absensi(kodeAbsensi: $kodeAbsensi, nis: $nis, kodeMapel: $kodeMapel, nip: $nip, keterangan: $keterangan, tanggal: $tanggal, waktu: $waktu)';
  }
}
