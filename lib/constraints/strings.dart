const String dbName = "dinelah_seller_db";
const String appName = "dinelah_seller";

const List<String> _productAttributes = ["Color", "Size"];
List<String> get productAttributes => _productAttributes;

const List<String> _productTypes = ["Simple", "Variable", "Bookable"];
List<String> get productTypes => _productTypes;

const List<String> _productFilters =
[
  "All",
  "On Hold",
  "Pending",
  "Processing",
  "Ready to Ship",
  "Driver Assigned",
  "Out for Delivery",
  "Completed",
  "Cancelled",
];
List<String> get productFilters => _productFilters;
