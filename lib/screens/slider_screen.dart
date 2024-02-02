import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Check'),
      ),
      body: Column(
        children: [

          Slider.adaptive( //ASÍ SE HACE UN SLIDER
            min: 0,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnable ? (value){ //SI EL SLIDER ESTA ACTIVADO DEJA REDIMENSIONAR LA IMAGEM
              _sliderValue = value;
              setState(() { });
            }
            :null //SI NO ESTA HABILITADO, BLOQUE LA IMAGEN CON EL TAMAÑO QUE ESTE Y NO DEJA REDIMENSIONAR
          ),

            // Checkbox(
            //   activeColor: AppTheme.primary,
            //   value: _sliderEnable,
            //   //onChanged: null, //PARA DESACTIVAR EL CHECK
            //   onChanged: (value){
            //     _sliderEnable = value ?? true;
            //     setState(() { });
            //   }),

            // Switch(
            //   activeColor: AppTheme.primary,
            //   value: _sliderEnable,
            //   onChanged: (value) => setState(() { _sliderEnable = value; }),
            //   ),

             CheckboxListTile(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              //onChanged: null, //PARA DESACTIVAR EL CHECK
              onChanged: (value){
                _sliderEnable = value ?? true;
                setState(() { });
              }),

             SwitchListTile(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              //onChanged: null, //PARA DESACTIVAR EL CHECK
              onChanged: (value){
                _sliderEnable = value;
                setState(() { });
              }),

             const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image:
                  const NetworkImage('https://img00.deviantart.net/6cb5/i/2016/242/9/3/tasm2__spider_man_png_transparent_character_art_by_paintpot2-daftbhj.png'),
                  width: _sliderValue,
                  fit: BoxFit.contain,
                  ),
              ),
            ),
        ],
      )
    );
  }
}