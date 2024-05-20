class Guru {
  String nip;
  String nik;
  String username;
  String password;
  String namaGuru;
  String? tempatLahir;
  DateTime? tanggalLahir;
  String? jenisKelamin;
  String? agama;
  String? noTelp;
  String? alamat;
  String? nuptk;
  String? statusGuru;
  String role;

  Guru({
    required this.nip,
    required this.nik,
    required this.username,
    required this.password,
    required this.namaGuru,
    this.tempatLahir,
    this.tanggalLahir,
    this.jenisKelamin,
    this.agama,
    this.noTelp,
    this.alamat,
    this.nuptk,
    this.statusGuru,
    required this.role,
  });

  factory Guru.fromJson(Map<String, dynamic> json) {
    return Guru(
      nip: json['nip'],
      nik: json['nik'],
      username: json['username'],
      password: json['password'],
      namaGuru: json['nama_guru'],
      tempatLahir: json['tempat_lahir'],
      tanggalLahir: json['tanggal_lahir'] != null
          ? DateTime.parse(json['tanggal_lahir'])
          : null,
      jenisKelamin: json['jenis_kelamin'],
      agama: json['agama'],
      noTelp: json['no_telp'],
      alamat: json['alamat'],
      nuptk: json['nuptk'],
      statusGuru: json['status_guru'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nip': nip,
      'nik': nik,
      'username': username,
      'password': password,
      'nama_guru': namaGuru,
      'tempat_lahir': tempatLahir,
      'tanggal_lahir': tanggalLahir?.toIso8601String(),
      'jenis_kelamin': jenisKelamin,
      'agama': agama,
      'no_telp': noTelp,
      'alamat': alamat,
      'nuptk': nuptk,
      'status_guru': statusGuru,
      'role': role,
    };
  }

  @override
  String toString() {
    return 'Guru(nip: $nip, nik: $nik, username: $username, password: $password, namaGuru: $namaGuru, tempatLahir: $tempatLahir, tanggalLahir: $tanggalLahir, jenisKelamin: $jenisKelamin, agama: $agama, noTelp: $noTelp, alamat: $alamat, nuptk: $nuptk, statusGuru: $statusGuru, role: $role)';
  }
}
