## `maven:3-amazoncorretto-8-debian-trixie`

```console
$ docker pull maven@sha256:9b3a4946b0cb48c1eadfd4a722369f760c499576fa29c36ffbeaa9204f62e424
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:648205dd865dc47c0286706cde710f7b88e6bab20a2bb634f35d2d8992c5ffac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.5 MB (149505291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad41b0214eb90d5155fd1d8d02da83c250a4293821eeecea67080e5ccb93c837`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:24:06 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:24:06 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 01:24:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Wed, 21 Oct 2026 01:24:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 01:24:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 01:24:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 01:24:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 01:24:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 01:24:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 01:24:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:24:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 01:24:06 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 01:24:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 01:24:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 01:24:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170c0d27a9405a1c7d85a70bf6f5ade8c83a5b871b8df61f047ba7f196bc707c`  
		Last Modified: Wed, 21 Oct 2026 01:24:24 GMT  
		Size: 109.6 MB (109601694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dc53aef299a7619ef08cccd99f2b15c6c3c926dbf309509284f8606e070522`  
		Last Modified: Wed, 21 Oct 2026 01:24:21 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b74dcb30308a893e6f3e3107a1e7ed2e41a16161df50b94b8a05fe732831224`  
		Last Modified: Wed, 21 Oct 2026 01:24:20 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1970b240c7b4e7a830b3255751fd34f95c30889104cd3091501d104b3d115734`  
		Last Modified: Wed, 21 Oct 2026 01:24:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:33acf23cc30acf1816995f74988cbc9aa4eda5d8059b78fbc2e4fd373294e07e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2991946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d57bc55866f8c697c0e3f5df2c41c143cff625db66e34ad24132e73041fe18`

```dockerfile
```

-	Layers:
	-	`sha256:cd313e094e89671ed6b093bdbca5b769d376c9f3196bdf44ab0ec17c49984b84`  
		Last Modified: Wed, 21 Oct 2026 01:24:21 GMT  
		Size: 3.0 MB (2974406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62a06424dc202aa6620825e43a17b3c7a04896063e61093bd736f05d1383509c`  
		Last Modified: Wed, 21 Oct 2026 01:24:20 GMT  
		Size: 17.5 KB (17540 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4b87836636e73dd18e6f40f85de3df1eb6afd329b31f29dd5cd987cefe4104ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149643038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64bbf38cc4bf03eba7a4134c151151a9c051ac201dda78f8dc2243160fe87030`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:30:31 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:30:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 01:30:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Wed, 21 Oct 2026 01:30:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 01:30:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 01:30:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 01:30:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 01:30:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 01:30:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 01:30:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:30:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 01:30:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 01:30:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 01:30:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 01:30:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac79f034f5299af3f4f5a9d67d206c9796903a6211e505f11d942dd02beebfbf`  
		Last Modified: Wed, 21 Oct 2026 01:30:51 GMT  
		Size: 109.4 MB (109382538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5cdff707892781f537cba421d69b3ebda413c9bb81028a0d9d8d99b103e453`  
		Last Modified: Wed, 21 Oct 2026 01:30:48 GMT  
		Size: 10.1 MB (10059016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddf76bbb74e0717e060b9ec97a1468df430ce020cb63aeb6e724e7b7a400965`  
		Last Modified: Wed, 21 Oct 2026 01:30:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebd662c3e30dc3324965e97bd9cca6a41e1629cc3330c91dc403262d4f0bead`  
		Last Modified: Wed, 21 Oct 2026 01:30:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:2d75096ba3d4d1ee911e779ff2c483a3ba8b50f6837b4127e23d2edd637c620c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5df27ebd14f16a8085836fba91a9f2872ab2f56decb5a231566caa56ddcf7bb`

```dockerfile
```

-	Layers:
	-	`sha256:8558ea0cee6b8046933461f73e7df3185e492bab9ce92df3e9bef2a70a813229`  
		Last Modified: Wed, 21 Oct 2026 01:30:47 GMT  
		Size: 3.0 MB (2974778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c346eef3aca20531d5ae38d0b8afe369e4a2f5905606af7aa962fa67d17ce6`  
		Last Modified: Wed, 21 Oct 2026 01:30:47 GMT  
		Size: 17.7 KB (17709 bytes)  
		MIME: application/vnd.in-toto+json
