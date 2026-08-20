## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:5b25917722276d44cf666422cdc9c8cb1166021dac74edea54f0c7f84abd10b6
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
$ docker pull maven@sha256:37fbf12c1c376b17e370d7eebaff9f0e3e8d4c624bf403dbf4ff764d35fd0032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269704620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86457a442e086341e9c7eec2e382b963ea19253c4be298a871dc3a90dbed48fd`
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
# Thu, 20 Aug 2026 18:08:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:08:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:08:08 GMT
CMD ["jshell"]
# Thu, 20 Aug 2026 18:26:12 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:26:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 18:26:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:26:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:26:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 18:26:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 18:26:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 18:26:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 18:26:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 18:26:12 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 18:26:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 18:26:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 18:26:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc43903ca001f4654b9a2d3141d9dc462cf666a77afc55d4309930d1e8ea37a`  
		Last Modified: Thu, 20 Aug 2026 18:08:28 GMT  
		Size: 205.2 MB (205168975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74769b0d426bc9bfca521f72e9571be481f14c74082b13e7736d998b050e2c12`  
		Last Modified: Thu, 20 Aug 2026 18:26:26 GMT  
		Size: 25.4 MB (25421853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75cd9afba4d93e754a3db82faf545c8211387cdd24caf917b72800c0ae07a947`  
		Last Modified: Thu, 20 Aug 2026 18:26:26 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7154f0337384e83a22867c4c571d84c5844173494f9cbc8e102a23b6e576f84`  
		Last Modified: Thu, 20 Aug 2026 18:26:25 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7234ec6e04b234d6c8786c6b89238c28a796419df3470618fc1f353ae35acc`  
		Last Modified: Thu, 20 Aug 2026 18:26:25 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:1a5fc442f324d16e44907be7a85f55b5cb309cfc230a47147680df86af77ddd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2dd30b2f43bb3b461624490912d94a43db8cecdd2f16298005d0757c560c70`

```dockerfile
```

-	Layers:
	-	`sha256:0a74140cbf85678e18aa0c1547a1732cd719dc0d21f2043a78b2c059e8061a37`  
		Last Modified: Thu, 20 Aug 2026 18:26:26 GMT  
		Size: 4.3 MB (4305222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5c46780314c4c0958c51c8587a90a4c4f1bee16ef99ac510248f014d799264f`  
		Last Modified: Thu, 20 Aug 2026 18:26:25 GMT  
		Size: 14.7 KB (14664 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:996cfdfe15890381757750bf3f2e2ec6d8a3db4bc16a717900e56d34e9c4b7d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267693113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06aed373308ded56a1b551f234f167faacbac68b2020d8d1e23db259c1f375a`
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
# Thu, 20 Aug 2026 18:04:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:04:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:04:42 GMT
CMD ["jshell"]
# Thu, 20 Aug 2026 18:09:02 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:09:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 18:09:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:09:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:09:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 18:09:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 18:09:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 18:09:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 18:09:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 18:09:02 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 18:09:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 18:09:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 18:09:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23d7b10a5d526ee750dfed3a0262216b898eae606eab2e30e2d814e00fe8e04`  
		Last Modified: Thu, 20 Aug 2026 18:05:04 GMT  
		Size: 203.9 MB (203948751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea89602d93f04597469f4e44cc84a1118bd66580f20d77a418fd1df1417cae21`  
		Last Modified: Thu, 20 Aug 2026 18:09:15 GMT  
		Size: 25.5 MB (25496150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaef4ded5001fde69607ecc74140aeb6e0eb2033d69e569dd9ad07fd3598e9a3`  
		Last Modified: Thu, 20 Aug 2026 18:09:15 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee23dca5a83c923ca9eef65f489f26f235e43eb72a1094e583f6f1a56503b72`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcb95777984d1142624b0ee68dbee7f95410fe63ff949028576fef900f99ae3`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:c2819c80e08b0ed038726a72b90312d4a1e89b76cdc4d04d35433a3dc116dc81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4326541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda2cdb7e8013f2fd24c7e89e424d405e036ae937afa320eb141555382947fa8`

```dockerfile
```

-	Layers:
	-	`sha256:fb93b6a3a6513ce64571f355d62abbbf97b48353fe86a8099675623e1ed80274`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 4.3 MB (4311744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f79f494f8db13431eb3619f161a6bf4318d858392dc8d7b73747ed63d798be0`  
		Last Modified: Thu, 20 Aug 2026 18:09:14 GMT  
		Size: 14.8 KB (14797 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; ppc64le

```console
$ docker pull maven@sha256:1d274ad1dad0a1cc05f9bfb123271e0fec94b2d20dbff39cf294c7c5a34df06e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277935161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae7bf2918dbdbc2949087785c55ea9a12b9a70303e946050bdb4e06d07c9d9c`
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
# Thu, 20 Aug 2026 18:18:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:18:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:18:45 GMT
CMD ["jshell"]
# Thu, 20 Aug 2026 18:35:51 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:35:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 18:35:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:35:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:35:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 18:35:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 18:35:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 18:35:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 18:35:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 18:35:53 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 18:35:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 18:35:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 18:35:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d610662793cc7b47dd3c2fbace222f3e122af4258f9daf2a763b6458a5e3ab`  
		Last Modified: Thu, 20 Aug 2026 18:19:27 GMT  
		Size: 204.3 MB (204297511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7d619a0743e6c198f44aa05a8d0e02a228b478246605ef5ca082354b02ce68`  
		Last Modified: Thu, 20 Aug 2026 18:36:25 GMT  
		Size: 30.0 MB (29965480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ebe121185a2168a1333c67c7b706c3ca01df642c768fc8387815dded090693b`  
		Last Modified: Thu, 20 Aug 2026 18:36:24 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2a05880438a022c95a108f8869f8cc45c72f22f2918fe1b2d91647363aa44e`  
		Last Modified: Thu, 20 Aug 2026 18:36:24 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14b70f715132c114ff7ece55a5bc83c4b405b8b3f2adc63380610cc5cd883de`  
		Last Modified: Thu, 20 Aug 2026 18:36:23 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:af1ebfaecbcf87d9ec33f76cb7d9104e3f4e0c6efde684f68111e2b8bbb1dc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:786a122bedc7206ee7567d00671acdeb0d83199fd4ae775fda610f017dc946c3`

```dockerfile
```

-	Layers:
	-	`sha256:84c435676a64285bcd78832ec4c882cd5ce270a78a4a0da3292f183ab192bdb3`  
		Last Modified: Thu, 20 Aug 2026 18:36:24 GMT  
		Size: 4.3 MB (4305651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f48456da9e8d97c7c3e18e09cd4e3f03495c8957e8ea812ab9e3a8d4728b4e`  
		Last Modified: Thu, 20 Aug 2026 18:36:23 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
