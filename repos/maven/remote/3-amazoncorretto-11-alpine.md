## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:bf416ade14e215c38e52aa78906bfb31cea1b5a2ae6d29db0dbbeb9aaacf46bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:ebbe6e22e64ce9142ae830555182d3d00c069ea6efb52cca68e3d9426ac8be83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159401054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55935766a13177f8c7555840043c52f6f62c94c2d289f543180ae6354c1731c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:13 GMT
ARG version=11.0.32.10.1
# Thu, 17 Sep 2026 21:35:13 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:13 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 17 Sep 2026 22:36:12 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 17 Sep 2026 22:36:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 22:36:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 22:36:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 22:36:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 22:36:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 22:36:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 22:36:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:36:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 22:36:12 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 22:36:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 22:36:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 22:36:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b6ce282e213022a087184e75197e2dedc01c23d7f25cb90d8e375f9b9e4276`  
		Last Modified: Thu, 17 Sep 2026 21:35:29 GMT  
		Size: 144.0 MB (143973383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71c99dd5ba94427b50548a5f3c57498f80569ff31d5298544dc29bd9e1b28db`  
		Last Modified: Thu, 17 Sep 2026 22:36:20 GMT  
		Size: 2.2 MB (2216968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899d8815948eb00f77628c6dff6771c18155fa5cf4dd93c1bac0fef4820cb45b`  
		Last Modified: Thu, 17 Sep 2026 22:36:20 GMT  
		Size: 9.4 MB (9359961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b969a8a67e7e2f55bc6341dc2daeeca1d7d8fbc7c5b57d61e7e481741db1a1`  
		Last Modified: Thu, 17 Sep 2026 22:36:20 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5da91ac3492994406bff077dc561c604e8a7da45bb24d4a49fad9fa1b88e5e5`  
		Last Modified: Thu, 17 Sep 2026 22:36:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:66ff5b792278a82f52df718e0fae3754d3ebc4152a4ed5cd8da59f3ab5077851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.1 KB (748104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db0b3f974b09485bfe0fecf1e80ac09a6736c4aff458a2255ea7e705130d4043`

```dockerfile
```

-	Layers:
	-	`sha256:99d7df511bcceb55afb58a743f3426735614fa054af759c49e24ce5b5121a8b0`  
		Last Modified: Thu, 17 Sep 2026 22:36:20 GMT  
		Size: 733.6 KB (733578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f0d802069d654ce8137889d620cbb6cb4dea0a591327896949c7d3c665c6f79`  
		Last Modified: Thu, 17 Sep 2026 22:36:20 GMT  
		Size: 14.5 KB (14526 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e8e9a1aa8f64635aae31464efda957eb5835ec0a570006fce04d65d321db1359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158151962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599e9b8abe5e588296160885d1defd57b99320614e9364ad406ab50944ac9529`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:23 GMT
ARG version=11.0.32.10.1
# Thu, 17 Sep 2026 21:36:23 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:23 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 17 Sep 2026 23:00:30 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 17 Sep 2026 23:00:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 23:00:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:00:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:00:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 23:00:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 23:00:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 23:00:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:00:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 23:00:30 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 23:00:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 23:00:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 23:00:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6266a4f2725289a4f2a335fbcc41cafc2a1ebf7ece6ad6513de60a6cd0240cc`  
		Last Modified: Thu, 17 Sep 2026 21:36:41 GMT  
		Size: 142.3 MB (142347042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1417ccededa9253bc2430fd115f3fa30c4391d74a24f43a941760d13580fe55`  
		Last Modified: Thu, 17 Sep 2026 23:00:38 GMT  
		Size: 2.3 MB (2256290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad800ca2786895f8f3ed22673e04fec511a8d5c8f27db396b2c2910705046c34`  
		Last Modified: Thu, 17 Sep 2026 23:00:38 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d059e9f1bb82a42096df65be95dcb6b3a7bd2b96808bfc88be3132e0443a3a`  
		Last Modified: Thu, 17 Sep 2026 23:00:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e668fcd4f1a061211f8ed2a0ea7869cfc59282e82cdf93a3c129a99dd377d0`  
		Last Modified: Thu, 17 Sep 2026 23:00:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:6be59a79959de93d0c6a81228a021cc654a6756c2dde3711277d880c236078ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **747.6 KB (747631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7276ed1e7c670710de78573e13147e8c02a8cc0fd196eae2878df18862506065`

```dockerfile
```

-	Layers:
	-	`sha256:832feb803cb5c775b19db2ca8190d8a155a392ee1189b4572a877a324b2af4e4`  
		Last Modified: Thu, 17 Sep 2026 23:00:38 GMT  
		Size: 733.0 KB (732972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:087f3a2980ffd7fb59829edf1dccf9a818633ee0d2a52c5c257fed31ff4207bc`  
		Last Modified: Thu, 17 Sep 2026 23:00:38 GMT  
		Size: 14.7 KB (14659 bytes)  
		MIME: application/vnd.in-toto+json
