class CalcImc {
  CalcImc({
    required this.altura,
    required this.peso,
  });
  double altura;
  double peso;

  double calcImc(altura, peso) {
    double result = peso / (altura * altura);
    return result;
  }
}
