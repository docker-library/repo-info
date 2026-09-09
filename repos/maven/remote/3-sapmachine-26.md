## `maven:3-sapmachine-26`

```console
$ docker pull maven@sha256:1de243c9f6bd1a530009ff6d6d2744f359d50e5680b8f5f2d90a6646ffdc555f
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
$ docker pull maven@sha256:a73812129ef5bd50680d22b878563e365eed6f4ea42bd78a240781f2d5b4fd9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205832432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf5d787ee59e8534bf2f7faa7264f2763b3e181078b4a9b36be0866341232b`
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
# Wed, 09 Sep 2026 02:40:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:40:28 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:43:44 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:43:44 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:43:44 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:43:44 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:43:44 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:43:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:43:44 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:43:44 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:43:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:43:45 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:43:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:43:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:43:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f8e09884ef6297d49e0a6d12ef31dcb6fbc102198307a4b6ff6d440c52ee4a`  
		Last Modified: Wed, 09 Sep 2026 02:40:48 GMT  
		Size: 141.3 MB (141282928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a24f7c31ffbc2870230c3336540ecd513e0827f7cfb81b0efb8a4679b5bcc3`  
		Last Modified: Wed, 09 Sep 2026 04:43:57 GMT  
		Size: 25.4 MB (25425285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8f91b3c46b6ea311714fe772e7073737852440564306c55c6c08b88558cb6a`  
		Last Modified: Wed, 09 Sep 2026 04:43:56 GMT  
		Size: 9.4 MB (9359963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2828875c50dee84ff33b70b185f18e5c2e5e10d034d5a4e013863f130b824c6e`  
		Last Modified: Wed, 09 Sep 2026 04:43:56 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:416f0f806c3941ffa94d36c0bccf6b11d4bbd718be638bc77c4cb58c1aa6be91`  
		Last Modified: Wed, 09 Sep 2026 04:43:56 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-26` - unknown; unknown

```console
$ docker pull maven@sha256:014c3382e936500369e3d1d0726690461bdaf49f3a4910a151149170bc7e24df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4266992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeb7a8ce379a08321940ef690dd4c1bcd3b01b1fa8ce08d20a4527d5692a3cb`

```dockerfile
```

-	Layers:
	-	`sha256:38d664a36564a439985f1de6404312c19add43246d21a09b98727d1337b6c684`  
		Last Modified: Wed, 09 Sep 2026 04:43:56 GMT  
		Size: 4.3 MB (4251086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2907d9ba99976f64ad458837ed26ff7bfbc09e7dd337d5caeebce6aa60a958e1`  
		Last Modified: Wed, 09 Sep 2026 04:43:56 GMT  
		Size: 15.9 KB (15906 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-26` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a6227cfd93319d96864316b6020c9425f14a37f9d14c0382f45768d2c556b341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 MB (204152344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281780d09be3f3a3fcc3127a22f8605b34b7f3e0b308eefcfc024cd114f8b473`
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
# Wed, 09 Sep 2026 02:35:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:35:50 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:29:50 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:29:50 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:29:50 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:29:50 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:29:50 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:29:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:29:50 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:29:50 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:29:50 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:29:50 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:29:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:29:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:29:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4583adcbfa8b6c6d5b50f65ec6607618b13e302be77ea9ad6f36287918a47a`  
		Last Modified: Wed, 09 Sep 2026 02:36:10 GMT  
		Size: 140.3 MB (140341954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5273182997195210abcc4724f528178af02be4037d3eb58b49f1cea61793414`  
		Last Modified: Wed, 09 Sep 2026 04:30:03 GMT  
		Size: 25.5 MB (25509394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebc856417f9bd52c483320da2168b0a09b6cadd615273cc1e3657768aeb118f`  
		Last Modified: Wed, 09 Sep 2026 04:30:03 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb008ac4906729765eebc7df257e2ef944d8142ec1a80811f4684398a6c3c88`  
		Last Modified: Wed, 09 Sep 2026 04:30:02 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b66d2c4ac1fcde0212a9014078705c1569e1a4e0eb6ab9188bd3cdf63231a76`  
		Last Modified: Wed, 09 Sep 2026 04:30:02 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-26` - unknown; unknown

```console
$ docker pull maven@sha256:8c63f4abde4888893fd79cf9cba0f81f314167fb5ad97ceda573e882d5eeef82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a937400ecff6d3cc809085019dce5a44be6cf42528940e53cd6521c08f57efce`

```dockerfile
```

-	Layers:
	-	`sha256:93d2267031710f3d4cbab65765d78a3cee2bdb1a5cdd82c215297241baf020b2`  
		Last Modified: Wed, 09 Sep 2026 04:30:03 GMT  
		Size: 4.3 MB (4257653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eda771278e5646e51d1f1fb85e035e41935834164d86c62feca0028555c4a527`  
		Last Modified: Wed, 09 Sep 2026 04:30:02 GMT  
		Size: 16.1 KB (16088 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-26` - linux; ppc64le

```console
$ docker pull maven@sha256:1ace25e33bb94f5a6e50c7096894dd5636469fae905fa619c78febda1ccf5172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214088436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269626ea752bcd8f2a81def98aedc55edf1a94c57676c822bcadea13d9eab4f0`
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
# Wed, 09 Sep 2026 03:45:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:45:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 03:45:34 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 12:23:52 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 12:23:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 12:23:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:23:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:23:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 12:23:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 12:23:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 12:23:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 12:23:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 12:23:53 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 12:23:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 12:23:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 12:23:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18dc0242fedcb250177444872b031fb68334048a5cad184032a713cdab3c7bd3`  
		Last Modified: Wed, 09 Sep 2026 03:46:23 GMT  
		Size: 140.4 MB (140379521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d278e0d86889db4a5b072c75b73cb01ae42bef4a4eae4a53bafb039c44f8407`  
		Last Modified: Wed, 09 Sep 2026 12:24:32 GMT  
		Size: 30.0 MB (29971078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0b28f59022b7a88a99045afeaf9d700a449d80329bb259a04de6fd4f9baa3d`  
		Last Modified: Wed, 09 Sep 2026 12:24:32 GMT  
		Size: 9.4 MB (9359950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004c3bbf1873efb76bf3be89c01ff90c6205fd4139a944ad29130f44b6537ba4`  
		Last Modified: Wed, 09 Sep 2026 12:24:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1667e1cee2b0c4bfb4f529eba2dcf192ee3f5c5fc5970daafc81d49a6e5c319f`  
		Last Modified: Wed, 09 Sep 2026 12:24:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-26` - unknown; unknown

```console
$ docker pull maven@sha256:3ae426d14da47a6f24f2b5100bccd227ee4bceab3b5155ff1a994f099458d9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4268836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6f61fcda5f36d65dfef5401011828df3fb2b27075314b1752cc9160257488a`

```dockerfile
```

-	Layers:
	-	`sha256:a61af172ca64f7c3ac3fe7e1318c3cfd1a34277bbaef500b1a0f933ffcb2de6a`  
		Last Modified: Wed, 09 Sep 2026 12:24:31 GMT  
		Size: 4.3 MB (4252855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4786cd3fa190852e93d8db7ebd6a59b27c2ca6f0be1d88d03fa2969421467f7`  
		Last Modified: Wed, 09 Sep 2026 12:24:31 GMT  
		Size: 16.0 KB (15981 bytes)  
		MIME: application/vnd.in-toto+json
