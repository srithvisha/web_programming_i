<html>
<head>
<title>Todo List 0.001</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
<link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet" >
<style>
table{
    font-family: Impact,Charcoal,sans-serif;
    width: 50%;
    float: right;
}
.w3-block w3-deep-purple w3-center
{
    width:50%;
    margin-right;
}
.w3-table,.w3-table-all
{
    width:50%;
    float:left;
    margin-left:350px;
}
.w3-block{
     width:50%;
    float:left;
    margin-left:350px;
}
</style>
</head>

<body>
<h3 class="w3-block w3-deep-purple w3-center">List of items</h3>
<table class="w3-table w3-bordered w3-border">
%for row in rows:
    <tr>
        <td>
            <a href="/update_item/{{row[0]}}"><i class="material-icons">edit</i></a>
        </td>
        <td>
            {{row[1]}}
        </td>
        <td>
        %if row[2]==0:
            <a href="/set_status/{{row[0]}}/1"><i class="material-icons">check_box_outline_blank</i></a>
        %else:
            <a href="/set_status/{{row[0]}}/0"><i class="material-icons">check_box</i></a>
        %end
        </td>
        <td>
            <a href="/delete_item/{{row[0]}}"><i class="material-icons">delete</i></a>
        </td>
    </tr>
%end
</table>
<a href="/new_item"><button class="w3-button w3-block w3-deep-purple ">New item...</button></a>
</body>
</html>