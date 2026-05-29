FROM 2fauth/2fauth

USER 0:0

RUN sed -i 's/migrate:fresh/migrate/g' /usr/local/bin/entrypoint.sh

USER 1000:1000

COPY --from=rexezugebuild/appservicelauncher / /

ENV WEBSITES_PORT=8000

ENTRYPOINT ["/.AppServiceLauncher/launcher.sh"]

CMD ["/usr/local/bin/entrypoint.sh"]
