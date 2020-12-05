//import 'package:hello_world__1/hello_world__1.dart' as hello_world__1;

void main() {}

class Cabala {
  String dia;
  String mes;
  String anio;
  String nombre;
  Cabala(String nombre, String fecha) {
    this.nombre = nombre;
    List<String> list = fecha.split('/');
    this.dia = list[0];
    this.mes = list[1];
    this.anio = list[2];
  }
  String toString() {
    int urgenciaInf = urgenciaInferior(dia, mes, anio);
    String str = 'Urgencia Inferior: $urgenciaInf \n';

    int tonicaFund = tonicaFundamental(nombre, urgenciaInf);
    str += 'Tonica Fundamental: $tonicaFund \n';

    List<String> fecha = fecha_actual();
    int tonicaD = tonicaDia(fecha[0], fecha[1], fecha[2], tonicaFund);
    str += 'Tonica del Dia: $tonicaD \n';

    int acont = acontecimientoDia(fecha[0], fecha[1], fecha[2], tonicaFund);
    str += 'Acontecimiento del Dia: $acont \n';

    String cabala_ = cabala_off(anio);
    str += 'La Cabala del Año: \n$cabala_';

    return str;
  }

  List<String> fecha_actual() {
    var fecha = new DateTime.now();
    int dia = fecha.day;
    int mes = fecha.month;
    int anio = fecha.year;
    return [dia.toString(), mes.toString(), anio.toString()];
  }

  int urgenciaInferior(String dia, String mes, String anio) {
    int cifras = dia.length;
    int mes_c = mes.length;
    int anio_c = anio.length;
    if (cifras < 1 || cifras > 31 || mes_c > 12 || mes_c < 1 || anio_c < 0) {
      throw ('No es numero valido el dia, mes o año');
    }
    cifras = tool(dia);

    mes_c = tool(mes);

    anio_c = tool(anio);

    int result = cifras + mes_c + anio_c;
    result = tool(result.toString());
    //cifras + "---" + mes_c + "---" + anio_c);
    return result;
  }

  int tool(String str) {
    if (str.length <= 1) {
      return int.parse(str);
    }
    List<int> list1 = new List(str.length);
    for (int i = 0; i < list1.length; i++) {
      list1[i] = int.parse(str.substring(i, i + 1));
    }
    int suma = 0;
    for (int i = 0; i < list1.length; i++) {
      suma += list1[i];
    }
    suma = tool(suma.toString());

    return suma;
  }

  int tonicaFundamental(String name, int urgenciaInferior) {
    List<String> lista = name.split(' ');

    List<int> lista_amount = new List(lista.length);

    for (int i = 0; i < lista.length; i++) {
      lista_amount[i] = lista[i].length;
    }

    int total = suma(lista_amount);

    total = tool(total.toString());

    total += urgenciaInferior;
    total = tool(total.toString());
    return total;
  }

  //"Carlos Gonzales Cifuentes", "22/2/2001"
  int tonicaDia(String dia, String mes, String anio, int tonicaFundamental) {
    int urgen = urgenciaInferior(dia, mes, anio);

    int res = urgen + tonicaFundamental;

    res = tool(res.toString());
    return res;
  }

  int acontecimientoDia(
      String dia, String mes, String anio, int tonicaFundamental) {
    int result = tonicaDia(dia, mes, anio, tonicaFundamental);
    //int hora_clave = int.parse((new)Random()*(a-b)+b; )
    int hora_clave = 9;
    hora_clave = tool(hora_clave.toString());
    result = result + hora_clave;
    result = tool(result.toString());
    return result; //por el momento no se como hallar la hora clave
  }

  int suma(List<int> lista) {
    int total = 0;
    for (int i = 0; i < lista.length; i++) {
      total += lista[i];
    }
    return total;
  }

  String cabala_off(String anio) {
    int anio_i = int.parse(anio);
    String cabalas = "";
    int i = 0;
    while (i < 4) {
      cabalas +=
          '${cabala(anio_i.toString())} <---> ${tool(cabala(anio_i.toString()).toString())} \n';
      anio_i = cabala(anio_i.toString());
      i++;
    }
    return cabalas;
  }

  int cabala(String anio) {
    int total = 0;
    List<String> list = anio.split('');
    //print(list);
    for (int i = 0; i < list.length; i++) {
      total += int.parse(list[i]);
    }
    total += int.parse(anio);

    //total = tool(total.toString());
    //total = tool(total.toString());

    return total;
  }
}
