## `maven:3-amazoncorretto-11-debian`

```console
$ docker pull maven@sha256:15922a3700dafad448c5c019d2ce5893b9ef8a4c9adb9ca9f462d32d82cf1707
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-debian` - linux; amd64

```console
$ docker pull maven@sha256:f0188e6f8831627e999fe73e180fab04de6aa1b9164fd88b47e6c412abe71ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242668010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adeeb42ede132817ab984352a75df80b974e9854c05d2f45d84b02f50e0b9d97`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 03:17:35 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:17:35 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 03:17:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Sat, 17 Oct 2026 03:17:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:17:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:17:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:17:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:17:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:17:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:17:35 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:17:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:17:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:17:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca7798579e0fc46c6a35a5bcd4b61122c542d52a149b7c4e90d1e8c24a6c239`  
		Last Modified: Sat, 17 Oct 2026 03:17:57 GMT  
		Size: 202.8 MB (202764654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7c714c6fbcc7777063da30c460564093f8931f10ca42be2579daff6b377bf4`  
		Last Modified: Sat, 17 Oct 2026 03:17:53 GMT  
		Size: 10.1 MB (10059004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89fae413967801a7ce346435f5d7822f9821d48b12b4ad512c041230352185e`  
		Last Modified: Sat, 17 Oct 2026 03:17:52 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83bd3f3c059c94fb87c586fae525711709de9a20baa539b8b82e2f942ebb876d`  
		Last Modified: Sat, 17 Oct 2026 03:17:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian` - unknown; unknown

```console
$ docker pull maven@sha256:3b737f82a161a2ffbe7a94c641acb668384cd03955eb05e5141ab8bc03684150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3138568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7aad9f1ebdb681f369cf07c1b4a5f18fe08b91267900c43736010fb9e5b12ac`

```dockerfile
```

-	Layers:
	-	`sha256:64bab005da918f80692a36a7625e583c6a3b5b83ab5741b5b5bd5a5e386e0e17`  
		Last Modified: Sat, 17 Oct 2026 03:17:53 GMT  
		Size: 3.1 MB (3121035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:203464c56b6d29937270a5e59ac92cf351df6b5c132472e7db46910bc4a5d495`  
		Last Modified: Sat, 17 Oct 2026 03:17:52 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:30c0bb8aaeeb5f17ecb707e28cebbb45940baba71a79a19ccc55d783c3e5af88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240082840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a508a85ddeaa93a035c8b8dc8d0de7595492222421d64d554c715d11cb32de`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 03:18:04 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:18:04 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 03:18:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Sat, 17 Oct 2026 03:18:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:18:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:18:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:18:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:18:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:18:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:18:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:18:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:18:04 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:18:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:18:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:18:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c422b0686f5a988ebdd3c2dc24b60327b2e1ca6a6e799a834a760fa610aae32`  
		Last Modified: Sat, 17 Oct 2026 03:18:26 GMT  
		Size: 199.8 MB (199822542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012f1198d430d045ce58876d5b1462a8f3f25dbdfa095438044eadca72750b93`  
		Last Modified: Sat, 17 Oct 2026 03:18:23 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf385dd055dc3836fcc709975d30499029a7f4323b9206202c2f9e3e58c5f0a`  
		Last Modified: Sat, 17 Oct 2026 03:18:22 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5007f86ba525ef5deed27a725a1ff47475baa207d9b4612539b4e7effa01bd1`  
		Last Modified: Sat, 17 Oct 2026 03:18:23 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian` - unknown; unknown

```console
$ docker pull maven@sha256:8259a17f908ef9b621ddf542f2077f390318954640f078ae89d49ecfa251b67c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3139029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6217061a7f025cdf2bc85c99a230909937a177d931b04955f4a98b56336a46c9`

```dockerfile
```

-	Layers:
	-	`sha256:42902d4d02a09b1e32c1b54c7c0731861b3e40470d024b0787356f5267fd346f`  
		Last Modified: Sat, 17 Oct 2026 03:18:23 GMT  
		Size: 3.1 MB (3121327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1d156818d24488f4945302cfb07f456e4c400ba9b2433f1b2771a2437683d85`  
		Last Modified: Sat, 17 Oct 2026 03:18:22 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
