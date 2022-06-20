if(inputProperties){
    deploymentId = inputProperties.deploymentId
    var inputs = inputProperties.requestInputs 
    port = null
    if(inputs.port) port = inputs.port
    policyName = deploymentId
    actions = ["Deployment.Create"]
    approveExpire = 7
    approvers = inputs.approvers
    autoApprove = "APPROVE"
    level = 1
    policyId = null
    criteria = {
        "matchExpression": {
            "and": [{
                    "key": "catalogItemId",
                    "operator": "eq",
                    "value": inputProperties.catalogItemId
                }, {
                    "key": "deploymentId",
                    "operator": "eq",
                    "value": deploymentId
                }
            ]
        }
    }
    criteria = JSON.stringify(criteria)
}
System.debug("Deployment ID: " + deploymentId)