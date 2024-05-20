class WaliKelas {
  String kodeWaliKelas;
  String nip;
  String kodeKelas;

  WaliKelas({
    required this.kodeWaliKelas,
    required this.nip,
    required this.kodeKelas,
  });

  factory WaliKelas.fromJson(Map<String, dynamic> json) {
    return WaliKelas(
      kodeWaliKelas: json['kode_wali_kelas'],
      nip: json['nip'],
      kodeKelas: json['kode_kelas'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kode_wali_kelas': kodeWaliKelas,
      'nip': nip,
      'kode_kelas': kodeKelas,
    };
  }

  @override
  String toString() {
    return 'WaliKelas(kodeWaliKelas: $kodeWaliKelas, nip: $nip, kodeKelas: $kodeKelas)';
  }
}
