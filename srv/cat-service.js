const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { getLocProdCharAPI } = this.entities;
	const { getLocProdActDemandAPI } = this.entities;
	const { getProdCharAPI } = this.entities;
	const { getClassCharAPI } = this.entities;
	const service = await cds.connect.to('ConfigProd');
	this.on('READ', getLocProdCharAPI, request => {
		return service.tx(request).run(request.query);
	});
    this.on('READ', getLocProdActDemandAPI, request => {
		return service.tx(request).run(request.query);
	});
	this.on('READ', getProdCharAPI, request => {
		return service.tx(request).run(request.query);
	});
	this.on('READ', getClassCharAPI, request => {
		return service.tx(request).run(request.query);
	});
});