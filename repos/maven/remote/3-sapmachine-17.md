## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:69fb685524b435d9fef2c85b1cee500eb5aa8123f5aadeb2ebb2caa610540b1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-17` - linux; amd64

```console
$ docker pull maven@sha256:58e9693d55957268c65b001602e6db3de21d6d32dd950230e69a92fff3677fbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269718393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d046cfb65347ffb608f242c16ba1dfd9ebb87af739705f798a5763d06e21e5ee`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:42:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:42:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 02:42:33 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:43:22 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:43:22 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:43:22 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:43:22 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:43:22 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:43:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:43:22 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:43:22 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:43:22 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:43:22 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:43:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:43:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:43:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc82e724604623be37a8c38b924d557667a62d8b88739e24d0b83dec4ce0187`  
		Last Modified: Wed, 09 Sep 2026 02:42:55 GMT  
		Size: 205.2 MB (205168966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21e2dd6cd8ab3d2b50d85c57de4bc78e1f1175a541c18f7899362831e9192ba`  
		Last Modified: Wed, 09 Sep 2026 04:43:36 GMT  
		Size: 25.4 MB (25425200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b136b7801c8b37a37f6809acf55fb302a068df8f4e65bc156a0e72042c6e510`  
		Last Modified: Wed, 09 Sep 2026 04:43:35 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb8f5b9b3893c6835b0c7f97d3a2ca5e1f79b9ca557fc31c7b2bdd7e20872cb`  
		Last Modified: Wed, 09 Sep 2026 04:43:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44b08d369804d364880dee605ce1a4b6097cc709ce7c2129c0541378fe81223`  
		Last Modified: Wed, 09 Sep 2026 04:43:35 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:5ea4b08ce7938a037b9a7d730477423cff52d0600a4054ffe4b8ca78b3ee886f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8951c9611df18dc76af71d3b6be24705670cca79099eeb9f27eed361de197785`

```dockerfile
```

-	Layers:
	-	`sha256:484db695d825d192d5d2d9f78fc39b2bb20fa32ba56eeeb4094b5891f544bcbe`  
		Last Modified: Wed, 09 Sep 2026 04:43:35 GMT  
		Size: 4.3 MB (4305236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b20d64e1e3d809ff8abd7508723671d5d29af3dfb63ad78d7e849b4bb3c04f6`  
		Last Modified: Wed, 09 Sep 2026 04:43:35 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:18ba701bb0e46ce1367a5e03e948ed64db3c562225e94a00072d6211f2b63ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267759174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05dbc93246d74ed2ebeba30bd48b5a8939f6aa497c20142aed57d5f9f9e71752`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 02:37:00 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:29:08 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:29:08 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:29:08 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:29:08 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:29:08 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:29:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:29:08 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:29:08 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:29:08 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:29:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:29:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:29:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:29:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de6ff2e2210ec82be3ac2fa1d1ef5f80452620a597b6464c9a42a8c6a48925a`  
		Last Modified: Wed, 09 Sep 2026 02:37:24 GMT  
		Size: 203.9 MB (203948831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25a8041d616b0ec71e21343d5be412a569ff7366c180dd167836efa8bdbdba`  
		Last Modified: Wed, 09 Sep 2026 04:29:21 GMT  
		Size: 25.5 MB (25509341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7d967c779909cf4c2c6816ad7f22b35c34ceae05d2d7079f58b01b4e7f775c`  
		Last Modified: Wed, 09 Sep 2026 04:29:21 GMT  
		Size: 9.4 MB (9359980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d743d9a40ee0fdede7ee8055dcbf110082d21c73ae15215ed50becb0ba6e0514`  
		Last Modified: Wed, 09 Sep 2026 04:29:20 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46928d3a2b30963a0ca99deed40ef693be11c07447548eb422752eb9cccf0e3b`  
		Last Modified: Wed, 09 Sep 2026 04:29:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:a9423d51ca825dd78bdd0922a136c1cca6805736a4fe77f029fbb392f6d50bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c8042200e7e572209efb2f22f78e16ff5607c64c4a08214849d48faa50f173`

```dockerfile
```

-	Layers:
	-	`sha256:799c799b21deaca1173e1a9e4c88ddaf376772902d4c3eeeb05c8d930e9d30c6`  
		Last Modified: Wed, 09 Sep 2026 04:29:21 GMT  
		Size: 4.3 MB (4311758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ae68124d7cf8dda13bbf8487b07c0347094e9622b76b3d64207969bc2cf9faf`  
		Last Modified: Wed, 09 Sep 2026 04:29:20 GMT  
		Size: 14.8 KB (14798 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; ppc64le

```console
$ docker pull maven@sha256:fed51b27dda233d9c462f196e2e2a63c8fce64a1d8e892c94259282a5e660b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278006353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b1d0f11011aef25dfac54625d76cfe0dc130dca05f756bf6fa33c66c7e5d24`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:36:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 08:36:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 08:36:59 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 12:19:44 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 12:19:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 12:19:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:19:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:19:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 12:19:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 12:19:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 12:19:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 12:19:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 12:19:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 12:19:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 12:19:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 12:19:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024615285ce808c350ecdc3d8ed2251a1c9be59f4eed757151b55fe88856e422`  
		Last Modified: Wed, 09 Sep 2026 08:37:45 GMT  
		Size: 204.3 MB (204297513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9275726d840bad407f75c140517e6e46f2daf0aee595a4315803adda19a0d527`  
		Last Modified: Wed, 09 Sep 2026 12:20:16 GMT  
		Size: 30.0 MB (29971014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50b1305f3ac0e04547495103b5cc75b1038f12df936ae46871d569f8ff22579`  
		Last Modified: Wed, 09 Sep 2026 12:20:15 GMT  
		Size: 9.4 MB (9359941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9d472ff372e7677435e60cbbad0c7ec1117e0d6751f2faa42d928c66f238a2`  
		Last Modified: Wed, 09 Sep 2026 12:20:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8c3167ef58b63831ce1a17646cb8505dc292a910add3949b83329bab893715`  
		Last Modified: Wed, 09 Sep 2026 12:20:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:f8ad4eedc9a911adda9e5a0437169ac3ca71ec57c0b96e8e4b554042c672e816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48760d9650cc685290cb0e0b91b3bbed4cbad1faba421aaa03a15c8b518403e0`

```dockerfile
```

-	Layers:
	-	`sha256:636bbdc0710cbcf7a83ce4ea0b94bd118892af35a230a03173a23a797f5c3855`  
		Last Modified: Wed, 09 Sep 2026 12:20:15 GMT  
		Size: 4.3 MB (4305665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a512cc85e71036eb69217718e4a02671fb6c3dffb78fea192817cf36e68e827e`  
		Last Modified: Wed, 09 Sep 2026 12:20:14 GMT  
		Size: 14.7 KB (14714 bytes)  
		MIME: application/vnd.in-toto+json
