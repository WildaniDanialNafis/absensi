class GuruMapel {
  String kodeGuruMapel;
  String nip;
  String kodeMapel;

  GuruMapel({
    required this.kodeGuruMapel,
    required this.nip,
    required this.kodeMapel,
  });

  factory GuruMapel.fromJson(Map<String, dynamic> json) {
    return GuruMapel(
      kodeGuruMapel: json['kode_guru_mapel'],
      nip: json['nip'],
      kodeMapel: json['kode_mapel'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kode_guru_mapel': kodeGuruMapel,
      'nip': nip,
      'kode_mapel': kodeMapel,
    };
  }

  @override
  String toString() {
    return 'GuruMapel(kodeGuruMapel: $kodeGuruMapel, nip: $nip, kodeMapel: $kodeMapel)';
  }
}
