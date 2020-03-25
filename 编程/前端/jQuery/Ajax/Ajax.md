get()

`jQuery.get( url [, data ] [, success(data, textStatus, jqXHR) ] [, dataType ] )`

```js

$.ajax({
  url: url,
  data: data,
  success: success,
  dataType: dataType
});

$.get('ajax/test.html', function(data) {
  $('.result').html(data);
  alert('Load was performed.');
});

```

