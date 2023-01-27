## `maven:3-sapmachine-11`

```console
$ docker pull maven@sha256:3d754fb2c865ed96df60752b643cd5aa4dff130d85251b54924b3f9c29b0a614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `maven:3-sapmachine-11` - linux; amd64

```console
$ docker pull maven@sha256:992b851c7ddfead27638e82e8116063e9ad11cec9de8eb9e4f16ccebe490170d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275829105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babf1a4c63a8ae8f87a148b255acc8e300682de7af8d2da2cc14372aa5f98234`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:08 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-11-jdk=11.0.18     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-11
# Wed, 18 Jan 2023 20:45:09 GMT
CMD ["jshell"]
# Wed, 18 Jan 2023 21:02:06 GMT
RUN apt-get update     && apt-get install -y curl git     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 21:02:07 GMT
ARG MAVEN_VERSION=3.8.7
# Wed, 18 Jan 2023 21:02:07 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Jan 2023 21:02:07 GMT
ARG SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27
# Wed, 18 Jan 2023 21:02:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries
# Wed, 18 Jan 2023 21:02:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.8.7/binaries MAVEN_VERSION=3.8.7 SHA=21c2be0a180a326353e8f6d12289f74bc7cd53080305f05358936f3a1b6dd4d91203f4cc799e81761cf5c53c5bbe9dcc13bdb27ec8f57ecf21b2f9ceec3c8d27 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 18 Jan 2023 21:02:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Jan 2023 21:02:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Jan 2023 21:02:14 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 18 Jan 2023 21:02:14 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 18 Jan 2023 21:02:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Jan 2023 21:02:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9829f76f3bad367d27d5bf3e91e6bc0f738874c547c1b6c35ea445acb9f11`  
		Last Modified: Fri, 09 Dec 2022 06:10:29 GMT  
		Size: 7.9 MB (7912181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67edfe5e2c0bc5add5bb810b9aa844411545f3822cc38bab69803399395adffb`  
		Last Modified: Wed, 18 Jan 2023 20:46:19 GMT  
		Size: 198.9 MB (198930742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7206b86e3ec0bcbca34e848e4172ad28e9605e0e98ac7607f5425d2da00bbdd`  
		Last Modified: Wed, 18 Jan 2023 21:05:02 GMT  
		Size: 32.1 MB (32056917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a3e07cb2fd014a885d322b2a4cd70364200fef60b3cacd2c21ad476846ff21`  
		Last Modified: Wed, 18 Jan 2023 21:04:58 GMT  
		Size: 8.4 MB (8351168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1364680197f4b255e90afe0571067eb2d5bebcabbe3c2d83949308caff6b004a`  
		Last Modified: Wed, 18 Jan 2023 21:04:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e716f2e16ede9a4bdec42b7b0c0f36d080190416cace59adb8833417a437bde`  
		Last Modified: Wed, 18 Jan 2023 21:04:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
