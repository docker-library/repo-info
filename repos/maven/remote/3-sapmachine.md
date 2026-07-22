## `maven:3-sapmachine`

```console
$ docker pull maven@sha256:de83a20b0fc79119d390b980478312ebb73eb34edb9d7248b4ed618b4f12a6ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine` - linux; amd64

```console
$ docker pull maven@sha256:de6b75a9b97f76241a9a19195d20290b21d1b939fffc7c9fe47bae36337f3a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208178933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c63df0f5e042987beef5aef61ed1837264df55392cc6b9943bb0cc0978ffea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:23:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:23:16 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 18:58:56 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:58:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 18:58:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:58:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:58:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 18:58:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 18:58:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 18:58:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:58:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 18:58:56 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 18:58:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 18:58:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 18:58:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267cf431a17b832aea5419552fc9e9cfef4efefb5c58e6352f4829e8369c0b86`  
		Last Modified: Wed, 22 Jul 2026 18:23:35 GMT  
		Size: 141.3 MB (141252737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac774aa140ae70458d2e806a544c60bc5af849e34af645760d125d1249052649`  
		Last Modified: Wed, 22 Jul 2026 18:59:09 GMT  
		Size: 27.8 MB (27829612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc64ce0af7ead74410ad86bd0315bd3c675df422b562750e86ec0a9542e79b2`  
		Last Modified: Wed, 22 Jul 2026 18:59:09 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a50b9c192258e086401310dddbe06ed7366d16acfac1c412ff15a0e9dd2ae6`  
		Last Modified: Wed, 22 Jul 2026 18:59:08 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bac626b239728f966f0513326182e33a1f7a25ff2d1bdf31050398cc7665193`  
		Last Modified: Wed, 22 Jul 2026 18:59:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:24f1a72b0dbc517bf19a4a3b63d5c4b24627de1ef09430b3977cd7767800346c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4266944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42b13a5a3112a21d7ef50aafbccb69d5421e9f059d7cb023288fa74280df2b7`

```dockerfile
```

-	Layers:
	-	`sha256:38e1bcfea7499f36a49f72b69f4ec98570169c10c39eba13f66e2f1e2703ea11`  
		Last Modified: Wed, 22 Jul 2026 18:59:09 GMT  
		Size: 4.3 MB (4251038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1be7a4cf23358b9babca42f0b3be316c544fff1c05685ef3b4d3250c85d733d`  
		Last Modified: Wed, 22 Jul 2026 18:59:09 GMT  
		Size: 15.9 KB (15906 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:266df37e432f85ef494f2ef04dc5c9c6156ab450df4c53a8be33f2d66662646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.4 MB (206404510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e241ccd579429fcfe2e429c0cc46cd25044502c1c07a6370d2f4e19591af226e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:21:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:45 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 18:51:53 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:51:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 18:51:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:51:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 18:51:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 18:51:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 18:51:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 18:51:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:51:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 18:51:53 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 18:51:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 18:51:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 18:51:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b762d6ab95a7e1413c8e2341b57da746358c916c8b9889a7c27f416fb1de5d68`  
		Last Modified: Wed, 22 Jul 2026 18:22:06 GMT  
		Size: 140.3 MB (140299015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4cdad601869d84009f5b32802e5d0ffc7e3d89de34b7dac73a5b20c8a35a1b`  
		Last Modified: Wed, 22 Jul 2026 18:52:06 GMT  
		Size: 27.9 MB (27860330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3669abd61ed1c807f731d397afaadf85453748862e6a86b66e4d0ef320d248`  
		Last Modified: Wed, 22 Jul 2026 18:52:05 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eedb28d212b59e711be44777966f00db4e9c635da53f7a2c17f66bc834c8233`  
		Last Modified: Wed, 22 Jul 2026 18:52:05 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6be711854f9e92c0091bfc9fb0a3c2f3f952e9b7951f982756ff5c55e9ff961`  
		Last Modified: Wed, 22 Jul 2026 18:52:05 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:7e57623a19207188db231d02f8f4d5b4dc463a02b4004b80c942a4fd47a90577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321dd88d81b7a505269948af3d0ccfaeaea9bd45296d81261bc7ea23b87dc0e6`

```dockerfile
```

-	Layers:
	-	`sha256:a814062c26d4375de72c58a29d4bd1fbbffa4ee9c2d1bbbfdacfaf3469e0a3bf`  
		Last Modified: Wed, 22 Jul 2026 18:52:06 GMT  
		Size: 4.3 MB (4257605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f70d770f6eae237470f8ac215f3379a849316938ae17e9f80078f2ab2a8771`  
		Last Modified: Wed, 22 Jul 2026 18:52:05 GMT  
		Size: 16.1 KB (16088 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine` - linux; ppc64le

```console
$ docker pull maven@sha256:bcb7b5a4cbf93eddb0ffae638e53cb11664215a628f1b50fd22f2a52de89b37a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216572773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b84565ce9b8464bfc5e68e26653625c3bfef110baba56568329f8ba878b3112`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:21:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:53 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 21:21:58 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 21:21:58 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 21:21:58 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 21:21:58 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 21:21:58 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 21:21:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 21:21:58 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 21:21:58 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 21:21:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 21:21:59 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 21:21:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 21:21:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 21:21:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadc79b708fb85c165ff1e051cd5a08bd791507ec3a4ea0c28045f6216f9b88c`  
		Last Modified: Wed, 22 Jul 2026 18:22:26 GMT  
		Size: 140.4 MB (140375504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd2181320f76161944fd92b187d3ddcf1983b08542757b29e467b63d5a880b6`  
		Last Modified: Wed, 22 Jul 2026 21:22:27 GMT  
		Size: 32.5 MB (32522835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded4f9597a6d60adbd65c2a919c724cf84f27787473fb763315169ac9396fd9e`  
		Last Modified: Wed, 22 Jul 2026 21:22:27 GMT  
		Size: 9.4 MB (9359948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55e383e1fdc377dfebe8abb463c170cbd449955a25681c78fb2e170e026a0e0`  
		Last Modified: Wed, 22 Jul 2026 21:22:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f2f183651ddffab330cfac0d09effb470c987cb57b833d4654a84a1e0e8553`  
		Last Modified: Wed, 22 Jul 2026 21:22:26 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:e038a32ff66cfaef0f9d52d64ea346216170bf411c43115d0b176b3d0ca872d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4268788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19e09112ebdbe8f02d947f0f17ccffc0dc44cf539ba29615a9fd6b1bb92d203`

```dockerfile
```

-	Layers:
	-	`sha256:0f90fcb72421733bcfc55109b660f3e9da36e8e0ef649ea55571497832c94741`  
		Last Modified: Wed, 22 Jul 2026 21:22:26 GMT  
		Size: 4.3 MB (4252807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55e56d77a72247c49b2cb40c80b5fb246a562d50412d264601b4cc3a29693e4`  
		Last Modified: Wed, 22 Jul 2026 21:22:26 GMT  
		Size: 16.0 KB (15981 bytes)  
		MIME: application/vnd.in-toto+json
