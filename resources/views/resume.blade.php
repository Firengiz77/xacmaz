<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Xacmaz Aqro</title>
</head>
<body>

<form method="post" action="{{route('sendresume')}}" enctype="multipart/form-data">
@csrf
<input type="text" name="name" placeholder="name" >
<input type="text" name="surname" placeholder="surname" >
<input type="text" name="email" placeholder="email" >
<input type="text" name="phone" placeholder="phone" >
<input type="text" name="birthdate" placeholder="birthdate" >
<input type="text" name="experience" placeholder="experience" >
<input type="text" name="gender" placeholder="gender" >
<input type="file" name="file" placeholder="file" >
<input type="text" name="vacancy_id" placeholder="vacancy_id" value="2" >
<button type="submit" > Submit </button>

</form>

</body>
</html>