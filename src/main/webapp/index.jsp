<h1>Welcome to codesign pipline testr205317</h1>
<li>id: <span id="_id"></span></li>
<li>name: <span id="_name"></span></li>


<script language="JavaScript">
var ajax = new XMLHttpRequest();
ajax.onload = functionName;
ajax.onerror = errorFunctionName;
ajax.open("GET", "http://localhost:8080/api/hello", true);
ajax.send();

function functionName() {
    console.log(this);
    if (this.status == 200) {
        var json = JSON.parse(this.responseText);
        var _id = json.id;
        var _name = json.name;
        document.getElementById("_id").innerHTML = _id;
        document.getElementById("_name").innerHTML = _name;
    } else {
        // TODO
    }
}
function errorFunctionName(e) {
    console.log(this);
    console.error(e);
}
</script>

<hr/>
<h1>Example :: Post Vivaan</h1>
<form method="post" action="/hello">
    <input type="text" id="name">
    <input type="button" value="Send" onclick="sendDataToServer(form.name.value)">
</form>
<p id="result">Hello World</p>


<script language="JavaScript">
    function sendDataToServer(data) {
        var ajax = new XMLHttpRequest();
        ajax.onload = receiveResponse;
        ajax.open("POST", "http://localhost:8080/api/hello", true);
        ajax.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        ajax.send(JSON.stringify({ name: data }));
    }

    function receiveResponse() {
        document.getElementById("result").innerHTML = this.responseText;
        console.log(this.responseText);
    }

</script>
