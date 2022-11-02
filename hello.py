def process_http_request(environ, start_response):
    status = '200 OK'
    response_headers = [
        ('Content-type', 'text/plain; charset=utf-8'),
    ]
    start_response(status, response_headers)
    body = [bytes(param + '\n', 'utf-8') for param in environ['QUERY_STRING'].split('&')]
    return body