## `maven:3-sapmachine-26`

```console
$ docker pull maven@sha256:9992096136d752e0756e9f6c0ff9a9fa8081cb08a67f5a859737df07fffa9eaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-26` - linux; amd64

```console
$ docker pull maven@sha256:7404572cae605186392034413e3b082bcb1ce696d3cd2e79a8facffe9b860742
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205818458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:268cc901c8f7c9a24869a962a56ea3b79976c1c16a8c08b74dfb740857ed4767`
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
# Thu, 20 Aug 2026 18:02:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:02:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:02:21 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 20:41:03 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:41:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 21 Aug 2026 20:41:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 20:41:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 20:41:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 21 Aug 2026 20:41:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Aug 2026 20:41:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 21 Aug 2026 20:41:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:41:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 21 Aug 2026 20:41:03 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Aug 2026 20:41:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Aug 2026 20:41:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Aug 2026 20:41:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788ef1ac44aa6db8ada384f7ca81a51a35292cb116ac9c19b441b67b0bc8bd3`  
		Last Modified: Thu, 20 Aug 2026 18:02:40 GMT  
		Size: 141.3 MB (141282873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e9be5fbd1295326c51600cde1bb78181dedb560a06fa3d1da3b376ca858a73`  
		Last Modified: Fri, 21 Aug 2026 20:41:17 GMT  
		Size: 25.4 MB (25421803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014a8fd2b82cb23b6a238d6d87b7ee3a563fe3f4855d890797fbd078fc9bf5ec`  
		Last Modified: Fri, 21 Aug 2026 20:41:17 GMT  
		Size: 9.4 MB (9359966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1868570da998f79e3d7766dd9f028df285b3cf50a7857fa34b21bdf097505364`  
		Last Modified: Fri, 21 Aug 2026 20:41:15 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9b7e09915d586bba7c142e11a2e8264f5e0615b33ec781fdecad352645d53`  
		Last Modified: Fri, 21 Aug 2026 20:41:15 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-26` - unknown; unknown

```console
$ docker pull maven@sha256:24e870b79c523fa91d590a0a93fda11b988961f016a04c9a8c71fcf15072d9d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4266979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd902706c530a451741464b65f5d833cdcb4f5280df49e3848a38522d847c52`

```dockerfile
```

-	Layers:
	-	`sha256:119f3e3a117ea91e1f4d2a7824af483877627cb176ec65d3297c286868e02826`  
		Last Modified: Fri, 21 Aug 2026 20:41:17 GMT  
		Size: 4.3 MB (4251072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd0645969ddccda326f97e8e80760d09eece7082b05b1ed1f2c3861c61bbab7c`  
		Last Modified: Fri, 21 Aug 2026 20:41:17 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-26` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:eec3ffa54398c9cf967765aaaa490eede90a48dd8592897b1e70ea1ec5f20993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 MB (204085964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a1ac9c4a0c239078d32009752d64ec7b6467509c6758c6942b7c4913ab28c5`
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
# Thu, 20 Aug 2026 18:01:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:01:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:01:51 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:26:21 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:26:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 21 Aug 2026 19:26:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:26:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:26:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 21 Aug 2026 19:26:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Aug 2026 19:26:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 21 Aug 2026 19:26:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 21 Aug 2026 19:26:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 21 Aug 2026 19:26:21 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Aug 2026 19:26:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Aug 2026 19:26:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Aug 2026 19:26:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3c8e6f54185b3f1e7636f513f0988d967988d6b93cda892ae3d2d46897236f`  
		Last Modified: Thu, 20 Aug 2026 18:02:11 GMT  
		Size: 140.3 MB (140341785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae9f21680582cfc14555e3beec9e90213f5c12f4a1bd1e2ed207ac291d18710`  
		Last Modified: Fri, 21 Aug 2026 19:26:34 GMT  
		Size: 25.5 MB (25495970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e681548331ceb380fbbb012cedf75fc109b03bed96ebe11dc35954a839a5c36d`  
		Last Modified: Fri, 21 Aug 2026 19:26:34 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87888d7036d5a62200d413f49787387a03cca5ff39951ff74651f6c3bde04c9`  
		Last Modified: Fri, 21 Aug 2026 19:26:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf175012a5eb4af9aec2e831d1145fba30ec993abb4c346c13f8c9ec679df6ad`  
		Last Modified: Fri, 21 Aug 2026 19:26:33 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-26` - unknown; unknown

```console
$ docker pull maven@sha256:53f147a87203a843a6d281e4db4e3d8824e8f43243f3cde516e57f1daf8cb478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43e6d3f91d3d6ef17a9cf73c6a3c8b23c8154aae0f985cf1417fa9eff5386ec`

```dockerfile
```

-	Layers:
	-	`sha256:89cf63aba04ef77b7336b5517bbf047c1998f57e260bc3d14dc7a75d6872e443`  
		Last Modified: Fri, 21 Aug 2026 19:26:34 GMT  
		Size: 4.3 MB (4257639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef0bb5512e42dfd11b853af18880b1ab045f402fe295acf2d64831cb1f803afe`  
		Last Modified: Fri, 21 Aug 2026 19:26:33 GMT  
		Size: 16.1 KB (16088 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-26` - linux; ppc64le

```console
$ docker pull maven@sha256:5ddeae112fb8d2cd290f073fcf06bf76e92c56e15a5d16a8d83ce5e101ce8dd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (214017067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff9952883c720932909e69c67ac58e66ae0f804be873f408d06066b6a844e22`
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
# Thu, 20 Aug 2026 17:59:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 17:59:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 17:59:23 GMT
CMD ["jshell"]
# Thu, 20 Aug 2026 18:34:05 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:34:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 18:34:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:34:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:34:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 18:34:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 18:34:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 18:34:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 18:34:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 18:34:06 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 18:34:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 18:34:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 18:34:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519a8805510c07ef066d9ed7a9395bd05723618c574eb9d54ee84638cab334ea`  
		Last Modified: Thu, 20 Aug 2026 17:59:57 GMT  
		Size: 140.4 MB (140379329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ecaf3ba044d3244773cb02496d4ddf6654617361c1096e8c873b7a9a38f0400`  
		Last Modified: Thu, 20 Aug 2026 18:34:37 GMT  
		Size: 30.0 MB (29965559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b22d11bdcd9e7c3d5769182a2c3c67be194a9d8c99890dd59ee5e584ef9992e`  
		Last Modified: Thu, 20 Aug 2026 18:34:36 GMT  
		Size: 9.4 MB (9359979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53a897dacf37694bb0586f18cb302bc1e4175230bb2b7509a39e1825afbda62`  
		Last Modified: Thu, 20 Aug 2026 18:34:36 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9e9418ef4be12323afa2b930d874c33e1c308f5c6e397e65f3e359cc4c35735`  
		Last Modified: Thu, 20 Aug 2026 18:34:36 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-26` - unknown; unknown

```console
$ docker pull maven@sha256:641efc38452ba0910a9c93c5ae8f8e1dab19c6793ef6e512884991a8f9ef4761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4268821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7579876d9b1a67c24d7cb02782c19e286c7bc3906f8067a2b4825ce66327f6ba`

```dockerfile
```

-	Layers:
	-	`sha256:7062e0e8eb5c027445b29dbc85b55b60f000cd49946a3320e551dae2691285a8`  
		Last Modified: Thu, 20 Aug 2026 18:34:36 GMT  
		Size: 4.3 MB (4252841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:448d730a1f34534d352548a212f89a15ebcdfcf75e9c6999f6267e4c8bca5930`  
		Last Modified: Thu, 20 Aug 2026 18:34:35 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
