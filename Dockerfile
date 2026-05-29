FROM 2fauth/2fauth

RUN sed -i 's/migrate:fresh/migrate/g' /usr/local/bin/entrypoint.sh

COPY --from=rexezugebuild/appservicelauncher / /

ENV WEBSITES_PORT=8000

ENTRYPOINT ["/.AppServiceLauncher/launcher.sh"]

CMD ["/usr/local/bin/entrypoint.sh"]
