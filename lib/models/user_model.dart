class UserModel {
  String? id;
  String? nome;
  String? email;
  String? password;
  String? phone;
  String? cpf;
  String? token;

  UserModel({
    this.id,
    this.nome,
    this.email,
    this.password,
    this.phone,
    this.cpf,
    this.token,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      cpf: map['cpf'],
      email: map['email'],
      id: map['id'],
      nome: map['nome'],
      password: map['password'],
      phone: map['phone'],
      token: map['token'],
    );
  }

  @override
  String toString() {
    return 'name: $nome | cpf: $cpf';
  }
}
