## `maven:3-sapmachine-21`

```console
$ docker pull maven@sha256:2dfcc177f70678c9719958e1c7754b4a82210c623a489ac0cffd982ced2d13c6
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
$ docker pull maven@sha256:ed50410ac3a133fc295f4120606dc8c9aa4d49583e3de7c4afc1246a5570e189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287704439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673e8ba535128b0265b83a026badfdcfe7750bcabeb71b96f2de8c8ae90a232c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:03 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 03:43:46 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:43:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:43:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:43:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:43:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:43:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:43:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:43:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:43:47 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:43:47 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:43:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:43:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:43:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e289a838bb38cff8aedfadf8f72cc4c9862106325665648deeeb78a41181cdeb`  
		Last Modified: Fri, 02 Oct 2026 01:39:25 GMT  
		Size: 222.5 MB (222451412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222614f563bf8e5c437d5c6bf5f084abcb155713d7c5ff529c6494ca3b2f7c29`  
		Last Modified: Fri, 02 Oct 2026 03:44:01 GMT  
		Size: 25.4 MB (25428590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140a822d949a5428681dbd16741fe77dd1dc5846abba6d9a724683ee841acd2f`  
		Last Modified: Fri, 02 Oct 2026 03:44:00 GMT  
		Size: 10.1 MB (10059009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa89b4a8db5d32d43b9ec47e0b52c64292c8c4b1affc168ccc96e64f09b926d`  
		Last Modified: Fri, 02 Oct 2026 03:44:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab686d0b959986406c66c439cd748df43e8562f225a44f62cf5b063e71cca7c3`  
		Last Modified: Fri, 02 Oct 2026 03:44:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:164ea36b2a86696fdbe14c20f6fba86dac0a9fa45fd506e13836af7fb7ceecfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c97584e890225e5bc33a995f918e419876779f732ffa4a3f03000f5458e400`

```dockerfile
```

-	Layers:
	-	`sha256:935198d24d90bb5293205d60c558ac492ef28ba7c5c9a3ed7c90c21ff3632644`  
		Last Modified: Fri, 02 Oct 2026 03:44:00 GMT  
		Size: 4.3 MB (4311915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00d91f64a3d5637b743cb0ed347d2252fdf4bd4df5e6975aa13151c290b83346`  
		Last Modified: Fri, 02 Oct 2026 03:44:00 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:10d876c9f6e33c6645a4212443ae70bda6ffb0b6929f4f828aec13fc8b11e9be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285028021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eba378da1bd7e85b5a763978f2c37cf1607659af948a584f8c875d9bc90e4fb4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:13 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 03:34:55 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:34:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:34:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:34:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:34:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:34:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:34:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:34:55 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:34:55 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:34:55 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:34:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:34:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:34:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82236e7657aba3762b6918037a0fe160523f1eefe8192fb54f57c9e81e9155e`  
		Last Modified: Fri, 02 Oct 2026 01:39:38 GMT  
		Size: 220.5 MB (220516742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcebe7a89496cf0ad765b01da43ac0703bdb08a913617ce8976fd0f2e14212a`  
		Last Modified: Fri, 02 Oct 2026 03:35:09 GMT  
		Size: 25.5 MB (25511185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5507091cbe7eda3fd0c02d8d81036580e0a263800395f4e2d0aca7eb68315013`  
		Last Modified: Fri, 02 Oct 2026 03:35:09 GMT  
		Size: 10.1 MB (10059003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f784df0c3b4be7f8be2c8174ef847912e2c3c85e0b42b7a04a2e78e863db46c`  
		Last Modified: Fri, 02 Oct 2026 03:35:09 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5a2272224734284d6ddb501e00c54c6358aa36ddcb61c5bd99981443aef5e8`  
		Last Modified: Fri, 02 Oct 2026 03:35:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:bbd2e1d5bb5956c1c5cbabcec44d104115a594abe08e3be250b8ff79182646ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4333240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eae16c05040555d8c2fe6e3507347f0ebed0210b156b69eaf8e24d1a3f862d6`

```dockerfile
```

-	Layers:
	-	`sha256:b483f473de8c2317a6237f3b81492c7645f33825072b991fe37f0acad56760bd`  
		Last Modified: Fri, 02 Oct 2026 03:35:09 GMT  
		Size: 4.3 MB (4318437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a76a30abd2e1af02e047a69788384c3b505df082a15221c31f635fab457bca2c`  
		Last Modified: Fri, 02 Oct 2026 03:35:08 GMT  
		Size: 14.8 KB (14803 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; ppc64le

```console
$ docker pull maven@sha256:c8c241643b28090b00aabb4f7201bd9f24cf2b98ceecd1b042192fcfb0a5a50d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297132178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec1e96219686f3a19d72083b41a1b882a929eae6d8c03880aa641779331e752`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:46:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:46:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 05:46:14 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 12:29:37 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 12:29:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 12:29:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:29:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:29:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 12:29:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 12:29:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 12:29:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 12:29:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 12:29:39 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 12:29:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 12:29:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 12:29:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c58cc0cba839a9ce8b57903ae1df0897d91cecab4c4bd39cdeef6178a208435`  
		Last Modified: Fri, 02 Oct 2026 05:47:07 GMT  
		Size: 222.7 MB (222714722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6571dc6fea1817a29d0b62bd97dab449a604e6a41dc788d2d5fa09e81394f5`  
		Last Modified: Fri, 02 Oct 2026 12:30:20 GMT  
		Size: 30.0 MB (29980926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d2871d333ed9147e88d47163ac9623e0e1fed80e9922239067edd5c4ca9588`  
		Last Modified: Fri, 02 Oct 2026 12:30:20 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770026c3d9187e118469280137723158cfce74163bf57769de84db6a0b3fb5a9`  
		Last Modified: Fri, 02 Oct 2026 12:30:20 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f87699df7ba746b6ed71d76a126b51640e9697ba272ddedd36a182569c860f5`  
		Last Modified: Fri, 02 Oct 2026 12:30:19 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:f4faeda4fa53e03e78d679aa6aac886b260d1ee4b23dbb686766910d07b85fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4327065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399c5e8af4576b48a2dc2b696753292087c4cb4cd41eaaf9f79e5edf6e96cb36`

```dockerfile
```

-	Layers:
	-	`sha256:b339c0f51255bd7965bbc89955dd92b21259b483709cafd83521a71b7a3873a2`  
		Last Modified: Fri, 02 Oct 2026 12:30:20 GMT  
		Size: 4.3 MB (4312344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76fc55163671181df798640e644e124eb52b016f7d75b7f611739bcced4e6e37`  
		Last Modified: Fri, 02 Oct 2026 12:30:19 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
