## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:448daf8e2a89dcbc7859a2231c18d2d1c4f19a3d7e4f064aa0f1898388cae0ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-25` - linux; amd64

```console
$ docker pull maven@sha256:e25a8db1cd65256e2bb1b00c6fa59e3ac82b9b7c0a3c94666f25ee534a3f68d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 MB (204102470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed265d5d3b04bf86c44674206f8d01bb193fc2d60fca74eab0afd1b52406bb4`
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
# Fri, 20 Nov 2026 03:32:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:32:22 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:18:40 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:18:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:18:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:18:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:18:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:18:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:18:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:18:40 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:18:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:18:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:18:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7003dd31f9fcb4524b04ca4eaf8001ffcbf125fd7e72ef5b1e2e65df9c653a`  
		Last Modified: Fri, 20 Nov 2026 03:32:40 GMT  
		Size: 138.8 MB (138817288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30a16d4c5bed72c8586b03b38856efa1a37b7dec968f19146075516ea9a1ec5`  
		Last Modified: Fri, 20 Nov 2026 06:18:52 GMT  
		Size: 25.4 MB (25431866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4567b5f675e73a7f713bd778de99315bcccf25962509237d2269e0e2024042a1`  
		Last Modified: Fri, 20 Nov 2026 06:18:52 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7841bd3f57ded55d36a0133cdf6ff9bc7dabcf70eb7e4cf53ede6f14e75b84ea`  
		Last Modified: Fri, 20 Nov 2026 06:18:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359e73c050bb15441ca346a2e9aa7c3a5682ab0c9d684cacc6d61ff5437a30c1`  
		Last Modified: Fri, 20 Nov 2026 06:18:51 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:173048d39a210aea3d87f7bb6d48c2468cddd16448fcdcb1cb9d891d30eaf5ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5ad155ba05be6c489e7be14bfd080add5580fea763eedd373fd16d1c9a89a7`

```dockerfile
```

-	Layers:
	-	`sha256:c74cd561f87ba0e9f86999995fd3c0fffbfce02c141c54e806238ec313b2c67b`  
		Last Modified: Fri, 20 Nov 2026 06:18:52 GMT  
		Size: 4.3 MB (4256810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b441ced7bb379a4be97b9a48a492f9375e17e904a4cf1062be894c61c810a7f`  
		Last Modified: Fri, 20 Nov 2026 06:18:51 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d1536030e211621b7e7c1f5b80508546e64e1aec0ca6d21c3de03407e7782d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202346014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3216f62eb02ee88dd491823ab0aa0b33d887cd5e9a786f19606599d80b480269`
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
# Fri, 20 Nov 2026 03:34:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:34:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:34:29 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:15:40 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:15:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:15:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:15:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:15:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:15:41 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:41 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:15:41 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:15:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:15:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de6f6a2012a1e58f2deda2590b5bd13cc325d54a5ad0d85e1b0afeb11aa9456`  
		Last Modified: Fri, 20 Nov 2026 03:34:47 GMT  
		Size: 137.8 MB (137806856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b626ba804b74941d24eb20532204c33f2d386717b03f0f0119d3f0f964a1200d`  
		Last Modified: Fri, 20 Nov 2026 06:15:53 GMT  
		Size: 25.5 MB (25513817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2c0ebd0df5fe6ffbf340e1dbe5c9d7d2615073af420e1a3b6679bcb8ecd298`  
		Last Modified: Fri, 20 Nov 2026 06:15:53 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470db017867138ba4bd8eecb5f5bdf0935a4501e3e4dff1ec56d266b44c7673e`  
		Last Modified: Fri, 20 Nov 2026 06:15:52 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e44557988aa5066831b393f01998a784b0307b54a6eb27115750f26eef55ea6`  
		Last Modified: Fri, 20 Nov 2026 06:15:52 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:ca58ff931718fdd1003687b8aea37df9c70bf10145008b8dfbb73729972b93da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2045bc7a5b5a4160c9589dbd8109bf6be1032b17175251d45c39ac99731bdaeb`

```dockerfile
```

-	Layers:
	-	`sha256:e493ec5c290c5207efbbf67a74a5da372d045135030ead18ccbf2bb8170957ad`  
		Last Modified: Fri, 20 Nov 2026 06:15:53 GMT  
		Size: 4.3 MB (4263329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:961ec4d17d26250ba0604c38c7ff910086e2f0794abf47ff2722b0c968531185`  
		Last Modified: Fri, 20 Nov 2026 06:15:52 GMT  
		Size: 14.8 KB (14804 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; ppc64le

```console
$ docker pull maven@sha256:cabacc69cea6a724a15217236d3ca8fbde821a677937f928df26f5c900656149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211135723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:293b62582b197899ab8062e8214e41484e34a6c9a379881b6541ad1c7c5e6b1d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:22:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:22:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 04:22:26 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 09:28:44 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 09:28:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 09:28:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:28:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:28:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 09:28:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 09:28:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 09:28:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:28:48 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 09:28:48 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 09:28:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 09:28:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 09:28:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de2deb3560b3d401c22621cf13639140edd6cfbfa7d434c418f577a27665df0`  
		Last Modified: Fri, 20 Nov 2026 04:23:06 GMT  
		Size: 136.7 MB (136689466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981426aa83f0eef4dd278591acba1fd07338c3135021927d8854892460d4728b`  
		Last Modified: Fri, 20 Nov 2026 09:29:31 GMT  
		Size: 30.0 MB (29979989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a4604bb5da5653b5dfa50de4e9b8fb9e20d11196c741fdced7838df741de31`  
		Last Modified: Fri, 20 Nov 2026 09:29:30 GMT  
		Size: 10.1 MB (10059021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b44074595459b631cdb52bd316d66cafacc31133113c77c46430ab19f36cf3`  
		Last Modified: Fri, 20 Nov 2026 09:29:30 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a279a29fb10f1be3d42dadd27e6e083a2d878c40041bd2a20185ebd1eb4afae`  
		Last Modified: Fri, 20 Nov 2026 09:29:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:d316b0fb901a2b7e6939d2397798d854baac9aaf26feb8d701760b0d9661a241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554b546aaf75e916620a05e99374a6d3348748ce9f5886757e706c48ee02bc39`

```dockerfile
```

-	Layers:
	-	`sha256:5e445fb474335d8e8f57b088c57a86ad20cdfbbb84ef95595d495ac0584b44e8`  
		Last Modified: Fri, 20 Nov 2026 09:29:30 GMT  
		Size: 4.3 MB (4258555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed3448a4f061544ff6abf5b676ca80e9364b47acf823a6c5c09bfc14fd8dae9`  
		Last Modified: Fri, 20 Nov 2026 09:29:29 GMT  
		Size: 14.7 KB (14720 bytes)  
		MIME: application/vnd.in-toto+json
