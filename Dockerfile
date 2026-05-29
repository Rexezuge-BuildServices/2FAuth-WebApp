FROM 2fauth/2fauth:latest

COPY --from=rexezugebuild/appservicelauncher:latest /.AppServiceLauncher/ /.AppServiceLauncher/

ENV WEBSITES_PORT=8000

EXPOSE 8000/tcp

ENTRYPOINT ["/.AppServiceLauncher/launcher.sh"]
CMD ["/entrypoint.sh"]
