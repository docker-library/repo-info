## `maven:3-sapmachine-21`

```console
$ docker pull maven@sha256:a70b3179d66fd533812608555aac28848088fe0e38f403e838729363c29d1353
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-21` - linux; amd64

```console
$ docker pull maven@sha256:6bd8c46b73084e84903711d9bf16fc562ea91d722613510304f57b4ff7827fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.8 MB (285753750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225f4710603a0009d38e25db43ac256973510fe4520ab4a265c8ca424e9c5afc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:33:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:33:19 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:18:30 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:18:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:18:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:18:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:18:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:18:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:18:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:18:30 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:18:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:18:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:18:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c838a2023fdcf80dfd0e2ff79f02e6ecb71b87eb6c2240a39248ac3930f726`  
		Last Modified: Fri, 20 Nov 2026 03:33:41 GMT  
		Size: 220.5 MB (220468728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff30db221e991dddb482d4db747829cb8b3286a6692569a4ddb6407697edf64d`  
		Last Modified: Fri, 20 Nov 2026 06:18:45 GMT  
		Size: 25.4 MB (25431700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f511d8426469c86aca225de9d103faa6d73345a94d822c2e54cd71d7b3a831ed`  
		Last Modified: Fri, 20 Nov 2026 06:18:45 GMT  
		Size: 10.1 MB (10059021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75644923e2626290bad5dd5af35990391d43fe052385e1022f95fa3cb0fdab9`  
		Last Modified: Fri, 20 Nov 2026 06:18:44 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133ae9a1026040078b4aec9d202961572d992d58e676f686b9393f7b65139259`  
		Last Modified: Fri, 20 Nov 2026 06:18:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:cc09f92282678c33f00ab4263ae59fe2a18b3cf3b389a9118a90bb3dc5168fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4327234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6cae2b8992fe6d0175894024628cd5dc73e4fefc89b14c6d480f1a063344281`

```dockerfile
```

-	Layers:
	-	`sha256:85bcc886240fcd7431e9cc66e2d566ce3653f1ca53e00b65dec25fa865fdd67c`  
		Last Modified: Fri, 20 Nov 2026 06:18:45 GMT  
		Size: 4.3 MB (4312563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98ac1a96baf38fa299c637492de0b9d89229d52356d3bd0d3805126022572f93`  
		Last Modified: Fri, 20 Nov 2026 06:18:44 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:bc0c39a273554757a2c71a64653340b308ed02ca6cb09e6918a151bda59b545b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283214810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d3caeb67d286aee96d218e5d2dc7da35b7138e7503520864a2e303616ac123`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:35:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:35:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:35:15 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:15:39 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:15:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:15:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:15:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:15:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:15:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:15:39 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:15:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:15:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6868bc61b17ca178fd68c758c5d22bce47681b84ff24a25dee714338823131`  
		Last Modified: Fri, 20 Nov 2026 03:35:39 GMT  
		Size: 218.7 MB (218675604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75699a0521e17d3bc205288210f10d4719a895cdf6649631844b917acdd2945a`  
		Last Modified: Fri, 20 Nov 2026 06:15:52 GMT  
		Size: 25.5 MB (25513865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9c1c164469813464d82348b5328f8b588cd8d7d4ebe39448ebece09fac97b3`  
		Last Modified: Fri, 20 Nov 2026 06:15:52 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1785d58b113d2a880dc81005d245827b312c938a5dfebeec61460a2e54be147`  
		Last Modified: Fri, 20 Nov 2026 06:15:51 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e6da0ae5c8801fd9f70521cdd9118a8bb952b2a675e41b634edd69036b1e43`  
		Last Modified: Fri, 20 Nov 2026 06:15:51 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:1060b8a9b99617105a95f15cbf8c3e0a69e6b592502f9cdfcf36d6a497324fd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4333889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc23f8b1d2e2c34d9650480e37f3a46cc5ff0bfec5fd713f31e4664705363d84`

```dockerfile
```

-	Layers:
	-	`sha256:1b212ae8ae03837560b06e7696953a0e53a14b78757779849cd09ca9bf590bac`  
		Last Modified: Fri, 20 Nov 2026 06:15:51 GMT  
		Size: 4.3 MB (4319085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adcc6adaa68c330929393418ae5da3bd77b2a581d8d988b59f30db8385cb5575`  
		Last Modified: Fri, 20 Nov 2026 06:15:51 GMT  
		Size: 14.8 KB (14804 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; ppc64le

```console
$ docker pull maven@sha256:f1d140685bf731f5d7821d53df1801be02e587f4ed1311729d95249e22765efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294823800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e45b20f7e2496a3b57bffdb1787d058611cb98e8542de142040caea69e33e52`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 17:08:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 17:08:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 17:08:53 GMT
CMD ["jshell"]
# Wed, 18 Nov 2026 17:41:08 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 17:41:08 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 17:41:08 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 17:41:08 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 17:41:08 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 17:41:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 17:41:08 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 17:41:09 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 17:41:10 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 17:41:10 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 17:41:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 17:41:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 17:41:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acf4df328722e9254639117f799749185048b22197d257666d1addbbc35345b`  
		Last Modified: Wed, 18 Nov 2026 17:09:42 GMT  
		Size: 220.4 MB (220377455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532e8d24f4c2c0f5fcd0769352d823edd4659b414e8a3445cbe1cb226796b6e`  
		Last Modified: Wed, 18 Nov 2026 17:41:39 GMT  
		Size: 30.0 MB (29979809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4526b6c4bee91597a0dc932709cfdc7fb8904f9f4c242548c1a0a1066001ff94`  
		Last Modified: Wed, 18 Nov 2026 17:41:39 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbc44c7018ec53fbe13fd575cbd0c1bc58277bc4149fe628abfc30d2f904836`  
		Last Modified: Wed, 18 Nov 2026 17:41:38 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c85a24f311ee9f89fa069c78c38a1ffb1a550880ef78001d2129b64a3361670`  
		Last Modified: Wed, 18 Nov 2026 17:41:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:d4c2940781fc6c0dab4355315238269765a9b729060e7e455fe216a0ddd1083d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4327713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a138fb51fa167107270a13f935df83e80ef4f9ed39df42f590b3cd2b8c1392c8`

```dockerfile
```

-	Layers:
	-	`sha256:8927b4e93571091205c08a88a1de4fa96c1c390516c3c157407821df356d015b`  
		Last Modified: Wed, 18 Nov 2026 17:41:38 GMT  
		Size: 4.3 MB (4312992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c593446600327b2ceb0611c736fcd1b76e5fa70ae2d96e2a0a4f5f8bd9ad8757`  
		Last Modified: Wed, 18 Nov 2026 17:41:38 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
