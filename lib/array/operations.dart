import 'package:myapp/array/deletion.dart';
import 'package:myapp/array/insertAtPost.dart';

void main() {
  //////------------------------ Insertion at Postion ------------------------//////
  print("Before insertion:");

  List<int> mainArr = [1, 3, 4, 7, 9];
  print("mainArr is $mainArr");

  // Insert 4 at position 3
  List<int> res = insertAtPost(mainArr, 1, 3);

  print("After insertion: $res");

  //////------------------------ Deletion at Postion ------------------------//////
  print("Before deletion:");

  List<int> mainArrforDel = [3, 8, 12, 5, 6];
  print("mainArr for del is $mainArrforDel");

  // Remove from position 3
  List<int> resDel = deletionOperation(mainArrforDel, 3);

  print("After Deletion: $resDel");
}
