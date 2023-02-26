abstract class OperationRepo {
  Future fetchOperations();
  Future fetchOperationsWithFilters(
      int filter_Deleted, int filter_Category, String search);
  Future createOperation(
      String numberOperation,
      String nameOperation,
      String? descriptionOperation,
      DateTime dateOperation,
      double valueOperation,
      int category_ID);
  Future fetchCategories();
  Future fetchOperationById(String id);
  Future deleteOperation(String id, bool isDeleted);
  Future updateOperation(
      int idOperation,
      String numberOperation,
      String nameOperation,
      String? descriptionOperation,
      DateTime dateOperation,
      double valueOperation,
      int category_ID);
}
