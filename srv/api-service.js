const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { deactivateUniqueID } = this.entities;	
    const servicePost = await cds.connect.to('SavedConfigAPI');
    
	this.on(deactivateUniqueID, async (request) => {
		let response = await servicePost.tx(request).post("/deactivateUniqueID", request.data);
		if(response.statusCode === 400){
			let res = request._.req.res;
			res.statusCode = 400;
			// res.send({values});
		}
		else if(response.statusCode === 199){
			let res = request._.req.res;
			res.statusCode = 199;
			// res.send({values});
		}
		request._.req.res.send(response);
	});
});