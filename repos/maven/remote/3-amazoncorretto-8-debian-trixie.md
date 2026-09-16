## `maven:3-amazoncorretto-8-debian-trixie`

```console
$ docker pull maven@sha256:c2148bbf93c41d4df29b7eedee24bf2b385477b86759c893e4c88fba5e60633e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:f9d8fd8226403667271be755b20dc345502d7e4ebc1ff1434de0a1bd30dd14ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151688757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4823b0f81fec40114a792c06c963bd34c143d9f5135e80543c026ab872d33fb8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 05:23:59 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:23:59 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 05:23:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Wed, 16 Sep 2026 05:23:59 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:23:59 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:23:59 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:23:59 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:23:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:23:59 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:23:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:23:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:23:59 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:23:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:23:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:23:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1edb3a837ea5faa6aa60fd4ec73a99db50a6d71fcd21512db86bbc9cadb0c78d`  
		Last Modified: Wed, 16 Sep 2026 05:24:16 GMT  
		Size: 112.5 MB (112535132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1413f892b6b0655b7814fa1739f4cf9d42159a872fec5db6a452f655ec7ea2`  
		Last Modified: Wed, 16 Sep 2026 05:24:14 GMT  
		Size: 9.4 MB (9359965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f756441d71db1c44083ff905b764d1b53ecc8c2ab6dc31aa1a5f2b7b4ad234`  
		Last Modified: Wed, 16 Sep 2026 05:24:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6520cb51caa0f2fbeb98715bd6b5007d13d06b2567ea6e89e4daa4a2cd25a8cd`  
		Last Modified: Wed, 16 Sep 2026 05:24:13 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:6c2c4238f5f9b40718262571ea41d6b7b4cec3e467afbebcebcf52caf0704c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65ae15b91308254288744a4f9da966c3f0a5584a7f62605318fc2229f0f1c33`

```dockerfile
```

-	Layers:
	-	`sha256:9ce8b045a504177ed1f8e8ba025a9e3e8147d3280d3aabd3225f8ac2c971ddf4`  
		Last Modified: Wed, 16 Sep 2026 05:24:13 GMT  
		Size: 3.0 MB (2964921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d5a72253561274f15affc07ae356189261a2a8f93603ae39212d0ed242567d1`  
		Last Modified: Wed, 16 Sep 2026 05:24:13 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:04463dc9c5334c24fc9e46dd916e0416363f97dad49487bc08053fac7f18e5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152246759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bcd1b375ecaf4270abd70df0cbfe8377b8b34b2dcf9be160771339410c77caa`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 05:23:52 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:23:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 05:23:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Wed, 16 Sep 2026 05:23:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:23:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:23:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:23:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:23:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:23:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:23:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:23:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:23:52 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:23:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:23:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:23:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ca563bd44849f2ec93347826440dae4339683eb0138b2bd89a0a367bca694c`  
		Last Modified: Wed, 16 Sep 2026 05:24:09 GMT  
		Size: 112.7 MB (112726202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3586aabfa1dbef20af68a5c0b35935d92810c0213e8c28aecba1cba349b307c8`  
		Last Modified: Wed, 16 Sep 2026 05:24:07 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7698e6e5116817fadab986ea60ae53c13ac86673cec976b1d24551879a37faf2`  
		Last Modified: Wed, 16 Sep 2026 05:24:06 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959b7b1298116fae4d12de9ad1b9ac3c63d9db9076e1998f5755f6b862d8b72c`  
		Last Modified: Wed, 16 Sep 2026 05:24:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:bf31bcca4e4b27211630990bd4d6c03ec24e1b2ecc8c540d2017532f3537bb78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82b9786c4fad9bfe7aa398b03d92079ae28b17f65e31d26dec2456c011815b4`

```dockerfile
```

-	Layers:
	-	`sha256:8b6c45a0c5fa4e676cc7cba2abc1649d1bad1f670fd79b191f229f1ef0cc01e6`  
		Last Modified: Wed, 16 Sep 2026 05:24:06 GMT  
		Size: 3.0 MB (2965293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c706e2ee48844414273e05273f7461689366f68413909c35c55ec3da3fc8efb`  
		Last Modified: Wed, 16 Sep 2026 05:24:06 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
