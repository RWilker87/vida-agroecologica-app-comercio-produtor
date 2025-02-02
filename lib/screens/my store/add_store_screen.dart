import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thunderapp/components/buttons/primary_button.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/my%20store/my_store_controller.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import '../../components/forms/custom_text_form_field.dart';
import '../../shared/components/dialogs/default_alert_dialog.dart';
import 'components/circle_image_profile.dart';

// ignore: must_be_immutable
class AddStoreScreen extends StatefulWidget {
 

  const AddStoreScreen({Key? key}) : super(key: key);

  @override
  State<AddStoreScreen> createState() => _AddStoreScreenState();
}

class _AddStoreScreenState extends State<AddStoreScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<MyStoreController>(
        init: MyStoreController(),
        builder: (controller) => Scaffold(
            appBar: AppBar(
              title: Text(
                'Criar Banca',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: size.height * 0.030),
              ),
            ),
            body: Container(
                width: size.width,
                height: size.height,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleImageProfile(controller),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Adicionar foto',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: size.height * 0.014,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Descrição',
                      style: TextStyle(
                          fontSize: size.height * 0.020,
                          color: kSecondaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      height: size.height * 0.02,
                      color: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nome',
                          style: TextStyle(
                              color: kTextButtonColor,
                              fontWeight: FontWeight.w500,
                              fontSize: size.height * 0.014),
                        ),
                        /*CustomTextFormField(
                          hintText: widget.bancaModel!.nome,
                          icon: Icons.person,
                          controller: controller.nomeBancaController,
                        ),*/
                        SizedBox(
                          width: size.width,
                          child: Card(
                            margin: EdgeInsets.zero,
                            elevation: 0,
                            child: ClipPath(
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 1)),
                                ),
                                alignment: Alignment.center,
                                child: Expanded(
                                  child: CustomTextFormField(
                                    hintText: "nome",
                                    controller: controller.nomeBancaController,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const VerticalSpacerBox(size: SpacerSize.small),
                    Text('Horário de Funcionamento',
                        style: kTitle1.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.014,
                            color: kTextButtonColor)),
                    SizedBox(
                      width: size.width * 0.65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Início',
                                style: TextStyle(
                                    color: kSecondaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.height * 0.016),
                              ),
                              /*Expanded(
                                child: CustomTextFormField(
                                  hintText: widget.bancaModel!
                                      .horarioAbertura,
                                  keyboardType:
                                      TextInputType.number,
                                  maskFormatter: controller
                                      .timeFormatter,
                                  icon: Icons.alarm_on,
                                  controller: controller
                                      .horarioAberturaController,
                                ),
                              ),*/
                              Divider(
                                height: size.height * 0.006,
                                color: Colors.transparent,
                              ),
                              SizedBox(
                                height: size.height * 0.05,
                                width: size.width * 0.25,
                                child: Card(
                                  margin: EdgeInsets.zero,
                                  elevation: 0,
                                  child: ClipPath(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black, width: 1)),
                                      ),
                                      alignment: Alignment.center,
                                      child: Expanded(
                                        child: CustomTextFormField(
                                          hintText: "00:00",
                                          keyboardType: TextInputType.number,
                                          maskFormatter:
                                              controller.timeFormatter,
                                          controller: controller
                                              .horarioAberturaController,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const VerticalSpacerBox(size: SpacerSize.small),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fechamento',
                                style: TextStyle(
                                    color: kSecondaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.height * 0.016),
                              ),
                              /*Expanded(
                                child: CustomTextFormField(
                                  hintText: widget.bancaModel!
                                      .horarioAbertura,
                                  keyboardType:
                                      TextInputType.number,
                                  maskFormatter: controller
                                      .timeFormatter,
                                  icon: Icons.alarm_on,
                                  controller: controller
                                      .horarioAberturaController,
                                ),
                              ),*/
                              Divider(
                                height: size.height * 0.006,
                                color: Colors.transparent,
                              ),
                              SizedBox(
                                height: size.height * 0.05,
                                width: size.width * 0.25,
                                child: Card(
                                  margin: EdgeInsets.zero,
                                  elevation: 0,
                                  child: ClipPath(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black, width: 1)),
                                      ),
                                      alignment: Alignment.center,
                                      child: Expanded(
                                        child: CustomTextFormField(
                                          hintText: "00:00",
                                          keyboardType: TextInputType.number,
                                          maskFormatter:
                                              controller.timeFormatter,
                                          controller: controller
                                              .horarioFechamentoController,
                                        ),
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
                    Divider(
                      height: size.height * 0.018,
                      color: Colors.transparent,
                    ),
                    Text('Formas de Pagamento',
                        style: kTitle1.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.018,
                            color: kSecondaryColor)),
                    SizedBox(
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: CheckboxListTile(
                              contentPadding: EdgeInsetsDirectional.zero,
                              activeColor: kPrimaryColor,
                              value: controller.isSelected[0],
                              title: Text(
                                controller.checkItems[0],
                                style: TextStyle(fontSize: size.height * 0.018),
                              ),
                              checkboxShape: const CircleBorder(),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (value) => controller.onItemTapped(0),
                            ),
                          ),
                          Flexible(
                            child: CheckboxListTile(
                              activeColor: kPrimaryColor,
                              value: controller.isSelected[1],
                              title: Text(
                                controller.checkItems[1],
                                style: TextStyle(fontSize: size.height * 0.018),
                              ),
                              checkboxShape: const CircleBorder(),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (value) => controller.onItemTapped(1),
                            ),
                          ),
                          Flexible(
                            child: CheckboxListTile(
                              contentPadding: EdgeInsetsDirectional.zero,
                              activeColor: kPrimaryColor,
                              value: controller.isSelected[2],
                              title: Text(
                                controller.checkItems[2],
                                style: TextStyle(fontSize: size.height * 0.018),
                              ),
                              checkboxShape: const CircleBorder(),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (value) => controller.onItemTapped(2),
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                    SizedBox(
                      width: size.width * 0.81,
                      child: Text('Preço mínimo pra frete',
                          style: kTitle1.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: size.height * 0.014,
                              color: kTextButtonColor)),
                    ),
                    Divider(
                      height: size.height * 0.005,
                      color: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Valor',
                            style: kTitle1.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: size.height * 0.014,
                                color: kTextButtonColor)),
                        SizedBox(
                          height: size.height * 0.05,
                          width: size.width * 0.25,
                          child: Card(
                            margin: EdgeInsets.zero,
                            elevation: 0,
                            child: ClipPath(
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 1)),
                                ),
                                alignment: Alignment.center,
                                child: Expanded(
                                  child: CustomTextFormField(
                                    hintText:
                                        "7.00",
                                    controller: controller.quantiaMinController,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    /*CustomTextFormField(
                      hintText: widget.bancaModel!.precoMin.toString(),
                      icon: Icons.paid,
                      controller: controller.quantiaMinController,
                    ),*/
                    const VerticalSpacerBox(size: SpacerSize.huge),
                    PrimaryButton(
                        text: 'Salvar',
                        onPressed: () {
                           if (controller.verifyFields()) {
                             controller.adicionarBanca(context);
                           } else {
                             showDialog(
                                 context: context,
                                 builder: (context) =>
                                     DefaultAlertDialogOneButton(
                                       title: 'Erro',
                                       body:
                                           'Preencha todos os campos',
                                       confirmText: 'Ok',
                                       onConfirm: () => Get.back(),
                                       buttonColor: kAlertColor,
                                     ));
                           }
                        }),
                    Divider(height: size.height * 0.015, color: Colors.transparent),
                  
                  ],
                ))));
  }
}
