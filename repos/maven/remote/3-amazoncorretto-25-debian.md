## `maven:3-amazoncorretto-25-debian`

```console
$ docker pull maven@sha256:b4cefc6b533874c6aea576797dd0117eb6720fa0677c41a3e5a338d7fce1ca02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-debian` - linux; amd64

```console
$ docker pull maven@sha256:d30e0a943f1873bbc779597521858476414ca8a76ac9ad3e409d9c677acece71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275542361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c430b55f30aca687ddb4fa5a5453d8dd3c9efc15e156f1908826066eb09324c7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 03:18:33 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:18:33 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 03:18:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Sat, 17 Oct 2026 03:18:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:18:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:18:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:18:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:18:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:18:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:18:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:18:34 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:18:34 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:18:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:18:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:18:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7e5da1d55051a2f95823c1d89355a9eff19d2fc95d432ff2be19c71c607621`  
		Last Modified: Sat, 17 Oct 2026 03:18:58 GMT  
		Size: 235.6 MB (235639008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9668a1d298bc325d85c07cb79eeba710bd2a74660ec371e4046bfef0d9eec`  
		Last Modified: Sat, 17 Oct 2026 03:18:53 GMT  
		Size: 10.1 MB (10059003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab2a10f9e78c25f72cc1437c971aa187c22000db26e2f3856c9a3d35a334a87`  
		Last Modified: Sat, 17 Oct 2026 03:18:53 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e26a39053d60d496ac43e9baaac82713547ac1907000d8ddf5ae9f589635ca`  
		Last Modified: Sat, 17 Oct 2026 03:18:52 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian` - unknown; unknown

```console
$ docker pull maven@sha256:a827ba1b930a907deb63ba4309574319c4c91f2e17e68b134a206c73c5464b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3142420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd4299906f2b9367cde069b0366bf7472b6df03e536d45ca4dd65c23d10ac5d3`

```dockerfile
```

-	Layers:
	-	`sha256:83f6a8e0727069b4c5f07d2d98ac6b82818674c2d2e516057451f5dfa655db2e`  
		Last Modified: Sat, 17 Oct 2026 03:18:53 GMT  
		Size: 3.1 MB (3124887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e80cb6c5227b54370950c10d5442815cb017e8a5dc0b5a2ccdd04de0c842ad9e`  
		Last Modified: Sat, 17 Oct 2026 03:18:52 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4a0ed3cb648cf6c42a6c2244cac7a3806fcf9dda41622a4ce097473ddcaab7da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273601238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4d030e0e2062f23d858dfbc670e1a29efe7b421358a71ffb26d17f6c2bc117`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 03:19:03 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:19:03 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 03:19:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Sat, 17 Oct 2026 03:19:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:19:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:19:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:19:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:19:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:19:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:19:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:19:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:19:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:19:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d84bc017d9d5c1952ab23becfc99cad424e1fe2f5e4b9ec3b1883825148442c`  
		Last Modified: Sat, 17 Oct 2026 03:19:29 GMT  
		Size: 233.3 MB (233340943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be813578c4326b3469616d0ed1fe71a50bd79c02a3ee767660596a6d329e165c`  
		Last Modified: Sat, 17 Oct 2026 03:19:25 GMT  
		Size: 10.1 MB (10059009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fbc157f3125b2d843f0b5930e22c73f5dd4b4a13ced092b1c23d3a95124df8`  
		Last Modified: Sat, 17 Oct 2026 03:19:24 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cce13acb2565b7685e541bdfb2588c329e4e4bee2a0a8ba3030e1e95536310e`  
		Last Modified: Sat, 17 Oct 2026 03:19:24 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian` - unknown; unknown

```console
$ docker pull maven@sha256:a88e9ff84b3ac7b667d60a850125207c0b49004c80ac252a64d2c1b4bf977409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3142241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76bca09b734259564e12c7a03b32cd7f59415f5045c36899dc7c4c9015d4929`

```dockerfile
```

-	Layers:
	-	`sha256:ce35f87523653db2e2fa92f8c9639530853e0812bf9b117fdc477acb9c91360f`  
		Last Modified: Sat, 17 Oct 2026 03:19:25 GMT  
		Size: 3.1 MB (3124539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51fe725b62ebfde7567aa45b5156f46efe16a5d025ad950204a809196e17efc2`  
		Last Modified: Sat, 17 Oct 2026 03:19:24 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
