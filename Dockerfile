FROM frolvlad/alpine-python2
RUN apk --update add curl bash
RUN curl -L -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-116.0.0-linux-x86_64.tar.gz
RUN tar -xvf google-cloud-sdk-116.0.0-linux-x86_64.tar.gz
RUN rm -rf google-cloud-sdk-116.0.0-linux-x86_64.tar.gz
RUN /google-cloud-sdk/install.sh -q
RUN /google-cloud-sdk/bin/gcloud -q components install alpha
ENV PATH "$PATH:/google-cloud-sdk/bin/"
CMD /google-cloud-sdk/bin/gcloud
