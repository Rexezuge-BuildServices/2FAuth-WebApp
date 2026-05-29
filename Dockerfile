FROM 2fauth/2fauth:latest

COPY --from=rexezugebuild/appservicelauncher:latest /.AppServiceLauncher/ /.AppServiceLauncher/

ENV WEBSITES_PORT=8000

ENTRYPOINT ["/.AppServiceLauncher/launcher.sh"]

CMD ["/usr/local/bin/entrypoint.sh"]
