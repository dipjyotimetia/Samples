var myHandlers = function () {

    /**
     * BeforeFeature handler.
     * Logging feature name to browser.currentFeature.
     * This can be used to add the feature name to reporting tags.
     */
    this.registerHandler('BeforeFeature', (Feature, callback)=>{
        if(Feature.getName() != null){
            browser.currentFeature = Feature.getName();
        }
        callback();
    });

    /**
     * BeforeStep handler.
     * Logging the step to reporting client.
     * This is a workaround to get the step name.
     */
    this.registerHandler('BeforeStep', function (Step, callback) {
        if (Step.getName() != null) {
            browser.reportingClient.testStep(Step.getName());
        }
        callback();
    });
};
;

module.exports = myHandlers;