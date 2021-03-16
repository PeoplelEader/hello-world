gunicorn  flask_ping:app \
--bind 0.0.0.0:8080 \
--workers 4 \
--preload \
--timeout 90 \
--access-logformat ' %(h)s %(t)s %(s)s %(b)s %(L)s "%(r)s"' \
--access-logfile - \
--config config/gunicorn.py \
--log-level=debug \
--log-file -
