form = document.createElement('form');
form.setAttribute('action', 'http://save-link.local/links');
form.setAttribute('method', 'POST');

title = document.createElement('input');
title.setAttribute('type', 'hidden');
title.setAttribute('name', 'title');
title.setAttribute('value', document.title);
form.appendChild(title);

url = document.createElement('input');
url.setAttribute('type', 'hidden');
url.setAttribute('name', 'url');
url.setAttribute('value', document.location.href);
form.appendChild(url);

document.body.appendChild(form);
form.submit();
