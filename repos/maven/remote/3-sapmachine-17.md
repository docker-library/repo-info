## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:d3ee33ee94cbf19da2dbaacd54e7a3c4716cdb50c822f3e2dfa94abd02b73011
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
$ docker pull maven@sha256:d0960aceb17c6e09388269d6f1174fde987b184e7e64fd6da55744af5f5ea261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269682479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5158b09e92ab136e8a8edec6e5664b66db2c7b71e56ce02af5efb843050f0fc4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 19:29:53 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 21:30:13 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
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
# Tue, 18 Aug 2026 21:30:14 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:30:14 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:30:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:30:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:30:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9608374683de89227ce0cf570ac42f90a11a890cd4ff62eafac36b7022f85c09`  
		Last Modified: Tue, 18 Aug 2026 19:30:14 GMT  
		Size: 205.1 MB (205147115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7a373a2f1d2e1bc5d72ff12695ffc2ac51e6cea50ce270601a90fa7be465cd`  
		Last Modified: Tue, 18 Aug 2026 21:30:26 GMT  
		Size: 25.4 MB (25421568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b9d8260513e2eb665b142ddc02c00bc7176de0b2b606becbce8d494417cac1`  
		Last Modified: Tue, 18 Aug 2026 21:30:26 GMT  
		Size: 9.4 MB (9359981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d60b892e09002ff8bd51a132471b19dec86f88d051e9bdb9e7978f224e6db8`  
		Last Modified: Tue, 18 Aug 2026 21:30:26 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49821418e524a60d6da8c57dc459bdd02abb5392ac654f33ec8ff440171914aa`  
		Last Modified: Tue, 18 Aug 2026 21:30:26 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:206e8296ac6676020eee0537f433a7c2f65f1b0855d3884d8b64ff99dc76b45a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42984ea31debeacd62c6f7700852177fdb6cc2d3363b1d3f161fb851d0b5953d`

```dockerfile
```

-	Layers:
	-	`sha256:b7434d849470a13e95ee9c55d0c4f3c0c7b8add89f3b67ca42951834ffa4a11a`  
		Last Modified: Tue, 18 Aug 2026 21:30:26 GMT  
		Size: 4.3 MB (4305214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57892d7a5f60dd0a5f5f26dffdd7762fdf28f5a7ab419f0f82afe562ec7b2ca0`  
		Last Modified: Tue, 18 Aug 2026 21:30:25 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0566c4ce9ee3943bf2af317819a7caf66a214e05b3df7715dbf861829c90e0c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267658425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e079964eefd638c12443f77591370d02de09c5afbd8237e7e04060045034226`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:30:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:30:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 19:30:07 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 21:30:18 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:30:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:30:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:30:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:30:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:30:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:30:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:30:18 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:30:18 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:30:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:30:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:30:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84470689939aab16873b970e84f3d71d835b52870aec92f174d063b9d896bec8`  
		Last Modified: Tue, 18 Aug 2026 19:30:30 GMT  
		Size: 203.9 MB (203917243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:460895600349e52415b33301c1e5a6ba8899545dd70afae921d0082d57114934`  
		Last Modified: Tue, 18 Aug 2026 21:30:31 GMT  
		Size: 25.5 MB (25492966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836d2e025a4044a1525c132025c67c3dd9d84de56ecca762ed1e9e0ae5e61135`  
		Last Modified: Tue, 18 Aug 2026 21:30:30 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eca9b9d790c7be6cda614ff4ce57b8b961097692ef9cf7896a787ab248196a1`  
		Last Modified: Tue, 18 Aug 2026 21:30:30 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c066b1a662734eae8830fdeab9c970401805f14f946c2d190c6d36b91c58fb0b`  
		Last Modified: Tue, 18 Aug 2026 21:30:30 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:ef8cd545b1c437f6bad138c522c5122d3ab45843953ea163a234a3653f92d946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b74a9135a0fdf456838304022ddcf53bbbf5ce72eddf851f34a3e87f05a191`

```dockerfile
```

-	Layers:
	-	`sha256:17d1ba9756de6a5904e123abb5e6f7a49c48fa84b4b98c2c1fac8e8997d082d4`  
		Last Modified: Tue, 18 Aug 2026 21:30:30 GMT  
		Size: 4.3 MB (4311736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c62152e2427dc1f674c0c7914635c7bb6f325ee646598ae31d1cd3eca5b66cd1`  
		Last Modified: Tue, 18 Aug 2026 21:30:30 GMT  
		Size: 14.8 KB (14798 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; ppc64le

```console
$ docker pull maven@sha256:1edb5ec11e50381a30daac8aac94e7d7f05ff2e6f1f79967758f4ccd95b63e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277942965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d62277f60ea987ea985cac7e56a0051b62bff1b40ca87a9a875279f6416fbb9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:43:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:43:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 19 Aug 2026 22:43:33 GMT
CMD ["jshell"]
# Thu, 20 Aug 2026 03:21:47 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 03:21:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 03:21:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 03:21:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 03:21:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 03:21:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 03:21:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 03:21:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 03:21:48 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 03:21:48 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 03:21:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 03:21:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 03:21:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58f3ffa656a056d12d5c4eb240b435d3fcb6716da2a497f19c0239c0c8c1dc1`  
		Last Modified: Wed, 19 Aug 2026 22:44:12 GMT  
		Size: 204.3 MB (204305139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebeedfde0d37284cba2bacccc293ea8e3e17fbb6e0b5726826882b31b899103b`  
		Last Modified: Thu, 20 Aug 2026 03:22:14 GMT  
		Size: 30.0 MB (29965652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cae041ce5de8e3e60bd0446308c80e3ffdb9533c78e65c5a36aed0ce6046ee6`  
		Last Modified: Thu, 20 Aug 2026 03:22:14 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c67a3b2c590a368597381dc79ece1dcbc186543cbc39f0e8c2c73f5f2201ef2`  
		Last Modified: Thu, 20 Aug 2026 03:22:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d02a64872ed61b8021325a353000c765f325b763f655841884201c3051ba62`  
		Last Modified: Thu, 20 Aug 2026 03:22:13 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:95453e01c265eab779df5356e8c50eaf8dc3f6e95011a0296c9c7bb3fb5dfa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28a29191e4050b0b7b753da942605927c448ed9b027a1db0866475874ab2f75`

```dockerfile
```

-	Layers:
	-	`sha256:38106a2c8d6cd1d7d3461b8b1ce43b3317e0800fd27548e319ee250f448e6367`  
		Last Modified: Thu, 20 Aug 2026 03:22:13 GMT  
		Size: 4.3 MB (4305643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53c9359e820df3509aa4fc59f3fa14bd062cd5884409126562e1963329186fd1`  
		Last Modified: Thu, 20 Aug 2026 03:22:13 GMT  
		Size: 14.7 KB (14714 bytes)  
		MIME: application/vnd.in-toto+json
