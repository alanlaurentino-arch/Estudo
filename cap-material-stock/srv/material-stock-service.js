const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
  const materialStockApi = await cds.connect.to('API_MATERIAL_STOCK_SRV');

  this.on('READ', 'StockByAccount', async (req) => {
    return materialStockApi.run(req.query);
  });
});
