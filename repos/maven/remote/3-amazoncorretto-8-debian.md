## `maven:3-amazoncorretto-8-debian`

```console
$ docker pull maven@sha256:4d1ef5b8f6e8b77262293297600e9e8e8a4b4fe9b1d49f983a6f6f34d271d137
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian` - linux; amd64

```console
$ docker pull maven@sha256:0d1142a4c5b01efaf1f0678791b36649306b9514ec4c84cd38b7610bd4084781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.5 MB (149534362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034b9639ef06d245584353ba24d29d988defd4847fe4747390bd590f9d40bfaa`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:13:44 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:13:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:13:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Thu, 05 Nov 2026 08:13:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 08:13:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:13:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:13:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 08:13:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 08:13:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 08:13:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:13:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 08:13:45 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 08:13:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 08:13:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 08:13:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce89ea9571672ec12b267ef09b343aa6819e6eba50b49065622b031efb5a375d`  
		Last Modified: Thu, 05 Nov 2026 08:14:01 GMT  
		Size: 109.6 MB (109618208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14beeabdf48e50f94f42901be63646241132c2b8268e4b578a7455a3fabdf579`  
		Last Modified: Thu, 05 Nov 2026 08:13:58 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57865520c8fbf2b1bf575c6bc51284f414126340ec18bd3c6cd985b86a055acb`  
		Last Modified: Thu, 05 Nov 2026 08:13:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c680844034ee47decd8b372a7ea1c18ae0e3c8595c9b8ca7e88fa00ce59ff7c`  
		Last Modified: Thu, 05 Nov 2026 08:13:58 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:9cdb584d196e434cc2681df307a69e4fed46092916612dcef34d563aa6fcde7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2991947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c4ed358d202ace89969bbc8c7f778685b3b9196ed025e9ec2e0b034261365bd`

```dockerfile
```

-	Layers:
	-	`sha256:af76730ca7b9e464ac34496823fdea33d31eb5c108e3fa23d0b884c2fb0ee058`  
		Last Modified: Thu, 05 Nov 2026 08:13:58 GMT  
		Size: 3.0 MB (2974406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f822266fb5bfac5854e827135cdab1935407e296e74640e12a9e789e18b55a4c`  
		Last Modified: Thu, 05 Nov 2026 08:13:58 GMT  
		Size: 17.5 KB (17541 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:2cdd24330e5f619fbfe3afb6c42518e4c7ed3860ade85b710568d07520d46665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149693136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebefa66d06b4ab67865b2313aa50cf7c718255a89da69b5a3f42cf4a61ec95`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:23:20 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:23:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:23:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Thu, 05 Nov 2026 08:23:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 08:23:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:23:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 08:23:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 08:23:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 08:23:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 08:23:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:23:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 08:23:20 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 08:23:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 08:23:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 08:23:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9099c019928f062a69b931b7697c98351e93e2dd94f6ec09f867dc7d81a8f8`  
		Last Modified: Thu, 05 Nov 2026 08:23:37 GMT  
		Size: 109.4 MB (109419119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80eb73b3846a59229d1c7bc7a0743455fcdd3d04329e327b37b4770362c1c80`  
		Last Modified: Thu, 05 Nov 2026 08:23:35 GMT  
		Size: 10.1 MB (10058973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e3024e417a5001168a3976358e97d63f33d0f78600885d5820e0a55b7376e6`  
		Last Modified: Thu, 05 Nov 2026 08:23:34 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c87c01c06199c7e7448a9abdd89b00156c224ec485f7cddcd41e5608d716e66`  
		Last Modified: Thu, 05 Nov 2026 08:23:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:b01cda48c62a4d87e20de9bd6811b2c27c9808ec02a79d1c21042df12835e139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9fc99582b72a61e253c258c3ab558545cebf75b5c3772077fbb4e359c046cf`

```dockerfile
```

-	Layers:
	-	`sha256:0a3e634f3149162576bd9f2311245095c5bf2575df2dca4f60692946071f5797`  
		Last Modified: Thu, 05 Nov 2026 08:23:35 GMT  
		Size: 3.0 MB (2974778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:653f17bd0cd76fd1ce93f87d5e8d11028852e16f303d6a8f1b6c21bce4ef478e`  
		Last Modified: Thu, 05 Nov 2026 08:23:34 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json
