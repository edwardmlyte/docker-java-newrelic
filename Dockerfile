FROM java:alpine

RUN apk --update add curl unzip
RUN curl -SL http://central.maven.org/maven2/com/newrelic/agent/java/newrelic-java/3.32.0/newrelic-java-3.32.0.zip -o /tmp/nr.zip && \
	unzip /tmp/nr.zip -d /opt/ && \
	rm /tmp/nr.zip
