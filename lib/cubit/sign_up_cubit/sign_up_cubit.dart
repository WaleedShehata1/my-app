import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubit/sign_up_cubit/sign_up_state.dart';

class SignUpCubit extends Cubit <SignUpStates>
{
  SignUpCubit() :super(SignUpInitialState());
  static SignUpCubit get(context)=>BlocProvider.of(context);

 IconData suffix = Icons.visibility_off ;
 bool isPassword =true;
 void showPassword ()
 {
   isPassword != isPassword;
   suffix = isPassword ?
   Icons.visibility :
   Icons.visibility_off ;
 emit(ShowPassword());
 }
}