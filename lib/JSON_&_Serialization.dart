import 'dart:convert';

void main() {
  // Koneksi dengan web service
  String responseFromWebService =
      '{"nama": "Budi Martami", "umur":17, "list_bahasa": ["C++", "Python"]}';

  // Parsing JSON ke Map
  Map<String, dynamic> mhsJson = jsonDecode(responseFromWebService);

  // Menampilkan data dari JSON
  print("Nama: ${mhsJson['nama']}");
  print("Umur: ${mhsJson['umur']}");
  print("Skill: ${mhsJson['list_bahasa']}");

  // Menampilkan skill satu-satu
  for (String val in mhsJson['list_bahasa']) {
    print(val);
  }

  // Serialization (mengubah dari objek ke JSON)
  String nama = "Ahmad Aulia";
  int umur = 20;
  List<dynamic> listBahasa = ["php", "js"];
  String mhs2json =
      jsonEncode({"nama": nama, "umur": umur, "list_bahasa": listBahasa});
  print(mhs2json);
}
