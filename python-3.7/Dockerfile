FROM lambci/lambda:build-python3.7

ENV PATH=/var/lang/bin:$PATH \
  LD_LIBRARY_PATH=/var/lang/lib:$LD_LIBRARY_PATH \
  AWS_EXECUTION_ENV=AWS_Lambda_python3.7

RUN rm -rf /var/runtime /var/lang; \
  curl https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz | tar -Jx; \
  cd Python-3.7.3 && ./configure --prefix=/opt/python --exec-prefix=/opt/python --without-doc-strings; \
  make && make install

COPY requirements.txt /

#RUN /opt/python/bin/pip3 install --upgrade pip; /opt/python/bin/pip3 install -r /requirements.txt

COPY bootstrap /opt/bootstrap

RUN chmod a+x /opt/bootstrap; rm -rf /opt/python/lib/python3.7/test; cd /opt

USER root

#ENTRYPOINT ["/var/runtime/bootstrap"]
CMD ["/usr/sbin/init"]

