trigger AccountTrigger on Account (Before Insert) {
    AccountTriggerHandler.updateDiscountPercantagesAndTiers(Trigger.new);
}