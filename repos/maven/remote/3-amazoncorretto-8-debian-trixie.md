## `maven:3-amazoncorretto-8-debian-trixie`

```console
$ docker pull maven@sha256:8feeb9d4d6373bca3e247dc69ee7a16683853b81e758ffade6c35bdd0904f387
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:1f74b09bd344ab06bfae2e9dcd3e6f081d9aa5e9d7ddbe56c8f69cb65b3897bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152462142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff371e3e71c35275b2ce142e490842d6ed5db1bce9d892759f5f5e40897de2fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 20:12:26 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:12:27 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 20:12:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Thu, 01 Oct 2026 20:12:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:12:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:12:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:12:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:12:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:12:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:12:27 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:12:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:12:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:12:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55cd678deb6c7f1c498b895a4d6224799591cc9d00383dad30a9b6fa2580b44`  
		Last Modified: Thu, 01 Oct 2026 20:12:44 GMT  
		Size: 112.6 MB (112571724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11da57b4bcb508d01d8a24bd3dff5af39d471efaa40286592a30dd411cc4a23`  
		Last Modified: Thu, 01 Oct 2026 20:12:42 GMT  
		Size: 10.1 MB (10058998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34274666d79e690e9ce64d4d4bbbfddbcaadcd3934b4a4ce273669565783ce3`  
		Last Modified: Thu, 01 Oct 2026 20:12:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30f76885256ea15db02cd9c4708370dfaec6c220d286ef6879881141b7f97f7d`  
		Last Modified: Thu, 01 Oct 2026 20:12:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:b347d4613cee30602ea6157bc6169e7053bed5cfac9ea475da66e299110803af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45e93b755559ea2e28006112daec58d72c088014e65bcf0929989ac3048ee41`

```dockerfile
```

-	Layers:
	-	`sha256:16e237f05e9b989603c7f84f6e62c0a90ddd75a7c3b3947139ac255422c21262`  
		Last Modified: Thu, 01 Oct 2026 20:12:41 GMT  
		Size: 3.0 MB (2975683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fe9601c9c743093a47786096f2387ae4fbfaf622d6b5e24bd555d0771cf32ef`  
		Last Modified: Thu, 01 Oct 2026 20:12:41 GMT  
		Size: 17.5 KB (17541 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:050db32700ccdc7bd7f1d1614710953a851914c5a9be31c529d009b19eb841c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152970211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789e05000e072c0776de07d06625394d621a68a5cca6e5edee4263a48aaf948f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 20:12:04 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:12:04 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 20:12:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Thu, 01 Oct 2026 20:12:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:12:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:12:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:12:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:12:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:12:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:12:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:12:04 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:12:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:12:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:12:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14585a7bc230609e6c50dd708078d077715ef8ccd77e2f1f9fcbbb757ef69b61`  
		Last Modified: Thu, 01 Oct 2026 20:12:22 GMT  
		Size: 112.7 MB (112720549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357bf23a2d9ebde41f970a19aa6c18f6e0d0bff9727d80cc27be8c4afc26ae81`  
		Last Modified: Thu, 01 Oct 2026 20:12:20 GMT  
		Size: 10.1 MB (10058969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d64231abd8ac37ca878b1d46b46589cfe2c712b298335caee0f84941797573`  
		Last Modified: Thu, 01 Oct 2026 20:12:19 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31bcddc7afa6381761bea1365d9521b4bf753ecd7250464777fd8c7ab6811e2`  
		Last Modified: Thu, 01 Oct 2026 20:12:19 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:a1312d47ac411b4238ce2b6b0321b52f2c3d692e76cb673bb09af46658074557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3dae084ddde4c6bc4e98ea4560810e1dbd9ccdbe105f280817c7dc3de47b2a`

```dockerfile
```

-	Layers:
	-	`sha256:e09a45a2ef723ee3b99228176f4fc84b3e1ddcce6046d89e4f1d8b1e0341526f`  
		Last Modified: Thu, 01 Oct 2026 20:12:19 GMT  
		Size: 3.0 MB (2976055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1aa07bd19bf421bd8b0ef99b766d8d380f5c3b257f1c6ce1f837c12c6ad41bc`  
		Last Modified: Thu, 01 Oct 2026 20:12:19 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json
