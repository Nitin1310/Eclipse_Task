$(document).ready(
function() {
$("input#tmpOpen").click(
function($e) {
$("div#tmpDialogue").show("slow")
}
);
$("input#tmpClose").click(
function($e) {
$("div#tmpDialogue").hide(5000);
}
);
}
);