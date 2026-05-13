using { API_MATERIAL_STOCK_SRV as stock } from './external/API_MATERIAL_STOCK_SRV';

@path: '/material-stock'
service MaterialStockService {

  @readonly
  entity StockByAccount as projection on stock.A_MatlStkInAcctMod {
    key Material,
    key Plant,
    key StorageLocation,
    key Batch,
    key Supplier,
    key Customer,
    key WBSElementInternalID,
    key SDDocument,
    key SDDocumentItem,
    key InventorySpecialStockType,
    key InventoryStockType,

    MaterialBaseUnit,
    MatlWrhsStkQtyInMatlBaseUnit
  };

}