import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/colors.dart';
import 'package:mobile/app/core/styles/text_styles.dart';
import 'package:mobile/app/module/home/presenter/widgets/info.dart';
import 'package:mobile/app/module/home/presenter/widgets/input_home.dart';
import 'package:mobile/app/module/home/presenter/widgets/select.dart';

import '../../widgets/input_common.dart';

class ArtScreenCompleted extends StatelessWidget {
  const ArtScreenCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Modular.to.navigate("home"),
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 24,
                    color: AppColors.onPrimary,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.person,
                    size: 24,
                    color: AppColors.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 125,
          flexibleSpace: Image.asset(
            'assets/minibanner.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PREENCHER ART",
                    style: GoogleFonts.poppins(
                        textStyle: styleModifier.blueBigBold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: context.mediaWidth * 0.9,
                    child: const Column(
                      children: [
                        Info(
                          title: 'Nome do Responsável Técnico: ',
                          subtitle: "GABRIEL GOMES BIFARONI ",
                        ),
                        Info(
                          title: 'Registro do Profissional: ',
                          subtitle: "5069263989",
                        ),
                        Info(
                          title: 'RNP: ',
                          subtitle: "2612970223",
                        ),
                        Info(
                          title: 'Título do Profissional: ',
                          subtitle: "Engenheiro Eletricista",
                        ),
                        Info(
                          title: 'Localizador: ',
                          subtitle: "LC34102667",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputHome(
                    onTap: () => Modular.to.navigate("helperregister"),
                    type: TextInputType.text,
                    label: "Forma de Registro da ART",
                    width: context.mediaWidth * 0.8,
                    initialValue: "Inicial",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputHome(
                    onTap: () => Modular.to.navigate("numberart"),
                    type: TextInputType.text,
                    label: "N° da ART vinculada Forma de Registro",
                    width: context.mediaWidth * 0.8,
                    initialValue: "5069263989",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputHome(
                    type: TextInputType.text,
                    label: "Participação Técnica",
                    width: context.mediaWidth * 0.8,
                    initialValue: "Individual",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputHome(
                    type: TextInputType.text,
                    label: "N° da ART vinculada Participação Técnica",
                    width: context.mediaWidth * 0.8,
                    initialValue: "5069263989",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputHome(
                    type: TextInputType.text,
                    label: "N° da ART vinculada Contrato",
                    width: context.mediaWidth * 0.8,
                    initialValue: "5069263989",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      InputHome(
                        type: TextInputType.text,
                        label: "Ação Institucional",
                        width: context.mediaWidth * 0.4,
                        initialValue: "Ministério Publico",
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      InputHome(
                        type: TextInputType.text,
                        label: "Convênio",
                        width: context.mediaWidth * 0.32,
                        initialValue: "Pessoa Física",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 132,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFF4E21)
                    ),
                    child: Text(
                      "EMPRESA CONTRATADA",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputHome(
                    type: TextInputType.text,
                    label: "Tipo de Contratante",
                    width: context.mediaWidth * 0.8,
                    initialValue: "Pessoa Física",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputHome(
                    type: TextInputType.text,
                    label: "Contratante",
                    width: context.mediaWidth * 0.8,
                    initialValue: "Amador Da Silva",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputHome(
                    type: TextInputType.text,
                    label: "CPF/CNPJ",
                    width: context.mediaWidth * 0.8,
                    initialValue: "356.188.350-90",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFF4E21)
                    ),
                    child: Text(
                      "DADOS DA OBRA/SERVIÇO",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Info(
                    title: 'Quantidade Cadastrada:',
                    subtitle: "0",
                  ),
                  const Info(
                    title: 'Utilizar o mesmo endereço do contratante? ',
                    subtitle: "",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SelectorWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      InputCommon(
                        type: TextInputType.text,
                        label: "País",
                        width: context.mediaWidth * 0.4,
                        initialValue: "Brasil",
                      ),
                      const SizedBox(
                        width: 27,
                      ),
                      InputCommon(
                        type: TextInputType.text,
                        label: "CEP",
                        width: context.mediaWidth * 0.32,
                        initialValue: "05473-006",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  InputCommon (
                    type: TextInputType.text,
                    label: "Logradouro",
                    width: context.mediaWidth * 0.8,
                    initialValue: "Rua das Pedras",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      InputCommon (
                        type: TextInputType.text,
                        label: "Numero",
                        width: context.mediaWidth * 0.35,
                        initialValue: "736",
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      InputCommon (
                        type: TextInputType.text,
                        label: "Complemento",
                        width: context.mediaWidth * 0.35,
                        initialValue: "0",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputCommon (
                    type: TextInputType.text,
                    label: "Bairro",
                    width: context.mediaWidth * 0.8,
                    initialValue: "Valinhos",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
              InputCommon(
                type: TextInputType.text,
                    label: "Cidade",
                    width: context.mediaWidth * 0.8,
                    initialValue: "Jaguariuna",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputCommon (
                    type: TextInputType.text,
                    label: "Estado",
                    width: context.mediaWidth * 0.8,
                    initialValue: "SP",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => Modular.to.navigate('home'),
                        child: Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 110,
                          decoration: BoxDecoration(
                              color: const Color(0xFF5FAEDE),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Voltar",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Color(0xFF2B2B2B),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Modular.to.navigate("home"),
                        child: Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 110,
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Avançar",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Color(0xFFFFFDFD),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
