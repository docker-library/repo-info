## `maven:3-amazoncorretto-8-debian-trixie`

```console
$ docker pull maven@sha256:77cc3fbf9af2c446acc5ca8a7508d1ffcb49ac0a4c0ef02b1c0ee79d8f1f69de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:24058eecbc5efa1136f15b1aa50a9352942373d765f3252def35c7e918c24176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148719317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc5db875d11b66a778c1ca2d89a9638a01ebfa30a5806cab1159233be7e059a0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 21:30:08 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:30:08 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 21:30:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Tue, 18 Aug 2026 21:30:08 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:30:08 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:08 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:08 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:30:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:30:08 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:30:08 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:30:08 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:30:08 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:30:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:30:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:30:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79da0d097e7d26769f15b4ff58df61ee5cc0e0219f0ba74c12b30d4b7c12028c`  
		Last Modified: Tue, 18 Aug 2026 21:30:25 GMT  
		Size: 109.6 MB (109577577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb4e132723b47d1aca7eead04770366f7ad2e08a9d2463ffcb867167535aee6`  
		Last Modified: Tue, 18 Aug 2026 21:30:22 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf18df35420c41fb2c0246e1c88dee57f119830831cc80b995fd4a2ea1b4ad0`  
		Last Modified: Tue, 18 Aug 2026 21:30:22 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcb65c629fcc0b775fcd111b48fb94c443450376c6681973295d3f54b09f85d`  
		Last Modified: Tue, 18 Aug 2026 21:30:22 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:431d6c65df0d6cc48feabd1f7a6d45eb7d17da262bdbbdbd520904a30ecaa7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c6c448370bf0a5d165110e310718a9cc43ce421596393facea134f346e964d`

```dockerfile
```

-	Layers:
	-	`sha256:a2f7b679613df702ffe7995ede460753e0ad5b19d531599282fcf45ff7cdd2a5`  
		Last Modified: Tue, 18 Aug 2026 21:30:22 GMT  
		Size: 3.0 MB (2964723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d771f67e11897f1b01327c3f3c20ec73fdb553342e7e4f4a56e8c45db729a2`  
		Last Modified: Tue, 18 Aug 2026 21:30:22 GMT  
		Size: 17.5 KB (17532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e0d19e829800a3962c194cb35ed23fff9568a8eef99663b495f85acebe2cbda6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148889338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4ca9e298ad717eff00dbc3c6ab891fd52044a2b24c577807f8a2622fd9965a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 21:30:13 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:30:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 21:30:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Tue, 18 Aug 2026 21:30:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:30:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:30:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:30:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:30:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:30:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:30:13 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:30:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:30:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:30:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a15331608bc2f3627fef9c407fd7729f21378271229dcd5e78e4c1c94867acb`  
		Last Modified: Tue, 18 Aug 2026 21:30:30 GMT  
		Size: 109.4 MB (109384769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6df8c93bbac3f41d1709cacbcd2c7224a4ac5985d90852df43c768096d1f9c`  
		Last Modified: Tue, 18 Aug 2026 21:30:28 GMT  
		Size: 9.4 MB (9359958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b7f99d385e50d61c51faab1e30559502cf4d4b9ffa94116c2db7d5c8d0f69f`  
		Last Modified: Tue, 18 Aug 2026 21:30:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefcec2ebe84506394b7cedb6277cea7fe0f3f8c0eaed8eeb9809211dfde984`  
		Last Modified: Tue, 18 Aug 2026 21:30:27 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:c3078d9b0c293a2bdd304743bfc0cea8be3512c5a9291a299740c4004338a1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea44f02032dfd150821897cf81909941c8a2eed0a854fae65c4f33cf5a59ad0`

```dockerfile
```

-	Layers:
	-	`sha256:d43da65c9796b383927514ac7f57f70dca4055738ec5696ee0f5dd509f3c3fb3`  
		Last Modified: Tue, 18 Aug 2026 21:30:27 GMT  
		Size: 3.0 MB (2965095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ca31d5dda9e880d72e0d7a8c50040a195dd8f61bedcd4d0f99efd53cc7b0d01`  
		Last Modified: Tue, 18 Aug 2026 21:30:27 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
