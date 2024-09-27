import '../Model/model.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{
    final CounterModel _model = CounterModel();

    var counter = 0.obs;

    void incrementCounter(){
      _model.incrementCounter();
      counter.value = _model.counter;
    }
}