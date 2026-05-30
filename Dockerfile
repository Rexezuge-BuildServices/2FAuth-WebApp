FROM 2fauth/2fauth

USER root:root

RUN sed -i 's/migrate:fresh/migrate/g' /usr/local/bin/entrypoint.sh

COPY --from=rexezugebuild/appservicelauncher /.AppServiceLauncher /.AppServiceLauncher

ENV WEBSITES_PORT=8000

ENV APP_USER="1000:1000"

ENTRYPOINT ["/.AppServiceLauncher/launcher.sh"]

CMD ["/usr/local/bin/entrypoint.sh"]
