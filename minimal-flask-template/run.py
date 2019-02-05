#!/usr/bin/env python3

from app import app


if __name__ == '__main__':
    app.run(host=app.config['HOST'], port=app.config['PORT'])
