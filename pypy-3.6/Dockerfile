FROM lambci/lambda:build-python3.7

ENV PATH=/var/lang/bin:$PATH \
  LD_LIBRARY_PATH=/var/lang/lib:$LD_LIBRARY_PATH \
  AWS_EXECUTION_ENV=AWS_Lambda_python3.7

RUN rm -rf /var/runtime /var/lang; \
  curl https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz | tar -Jx; \
  cd Python-3.7.3 && ./configure --prefix=/opt/python --exec-prefix=/opt/python --without-doc-strings; \
  make && make install

RUN rm -rf /opt/python/lib/python3.7/test; cd /opt; zip -r ../python37.zip .

COPY bootstrap.py /opt/bootstrap

USER root

#ENTRYPOINT ["/var/runtime/bootstrap"]
CMD ["/usr/sbin/init"]

