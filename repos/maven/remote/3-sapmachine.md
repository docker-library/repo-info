## `maven:3-sapmachine`

```console
$ docker pull maven@sha256:266b305756a95f13f46216e277e359a93cb7fd6b1bc8e71de5c15f56401722b7
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
$ docker pull maven@sha256:f3379edd2965fdbf9b23c404186a4854f3ee791f14c0427754ff1be1a71e9f9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207366518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3889b4c56df7fb6c232864e75bd33be9631cefbf138862292b3083615f3ac6e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:38:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:38:49 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 02:19:00 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:19:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:19:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:19:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:19:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:19:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:19:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:19:00 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:19:00 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:19:00 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:19:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:19:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:19:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd1615fbd94629d73370df879624768eec47507945b587bf31371d42c23ef6c`  
		Last Modified: Wed, 11 Nov 2026 23:39:08 GMT  
		Size: 139.7 MB (139672694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55376c6b7d5ae444825af7f303bec40ce935bfc01cea860239c98b412d33b386`  
		Last Modified: Thu, 12 Nov 2026 02:19:14 GMT  
		Size: 27.8 MB (27840587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6167f5176f8534f9ac18cb320ae8ed4bbe78fba1c0c5e6725d20df6a1854d613`  
		Last Modified: Thu, 12 Nov 2026 02:19:13 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e0f0c3ed048905ad810f77d442186187b836a53bebf28da2a3d5f362359846`  
		Last Modified: Thu, 12 Nov 2026 02:19:13 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921ab4a544f019fddaee35b5b14bdafe89e0df55e08d8c0e3f4efc7e3a35bb73`  
		Last Modified: Thu, 12 Nov 2026 02:19:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:5f590b4ad586bb3b2b4f24a3414521e5ad5e5bf1b19ee85fb9fdb5f044272609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602239910b400ec29a7d163ebe014e677c10315f4ec43756d3c1b93649051d12`

```dockerfile
```

-	Layers:
	-	`sha256:05e4b0c3152d4ca0254b4a652d85e7d6e99874640c58eece21272de5f9279e11`  
		Last Modified: Thu, 12 Nov 2026 02:19:13 GMT  
		Size: 4.3 MB (4254891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daa99e0cd4471e27dbf38b75539b7e1aad7100ec853699d72572f5f8545916df`  
		Last Modified: Thu, 12 Nov 2026 02:19:13 GMT  
		Size: 15.9 KB (15915 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:da936a93991b343ecee72eb57e33887c827128a3c450c403338a6f7b9cac3da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 MB (203302265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fc09dc58af3693e083b60e3aa8bc8673e7a30eb70da691d49ddfa0e501047d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:41:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:41:23 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 02:18:52 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:18:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:18:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:18:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:18:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:18:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:18:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:18:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:18:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:18:52 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:18:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:18:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:18:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8565c6ecedc659401661431b078f3f9c7987254807a51844fed7f925e262019`  
		Last Modified: Wed, 11 Nov 2026 23:41:41 GMT  
		Size: 138.8 MB (138763151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e5dcb89e27051a49596fde6dcb7f2c1f9a9bb2d5e272f23a4acbb36efb457f`  
		Last Modified: Thu, 12 Nov 2026 02:19:05 GMT  
		Size: 25.5 MB (25513832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13eea2588dea5e0c1512676d1ee4f44c7581409d8a402cb5f17d002ef71a6a6`  
		Last Modified: Thu, 12 Nov 2026 02:19:05 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cca7ad2083e9407d593abb184df3ee8750eeffbff03719a6fee03c84dba4d73`  
		Last Modified: Thu, 12 Nov 2026 02:19:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3139f49e287a1f6fb5c1aef3e1c48bbcf938bec910b0d7729994b70c12b2db2`  
		Last Modified: Thu, 12 Nov 2026 02:19:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:b21bd6267c5bb488f01ea9016fc30974239401aa969d10929f3e7a7ba3ec11ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf73b23b5154aea13f030679aa4d47b8c73ec94b1f57b2a5e0db794079a8369`

```dockerfile
```

-	Layers:
	-	`sha256:9dd0c0ce20103aa77a4141c864af5bfafaef97185e0ecf9e5e665c737944380e`  
		Last Modified: Thu, 12 Nov 2026 02:19:05 GMT  
		Size: 4.3 MB (4261458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3e14bf0c3680a8389e96d9594a295a8f83499eae08527f7fbeb9dedd453385`  
		Last Modified: Thu, 12 Nov 2026 02:19:04 GMT  
		Size: 16.1 KB (16096 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine` - linux; ppc64le

```console
$ docker pull maven@sha256:186a8f286ee9e28b6882f75228098fb55a3b6d3b4aef8243f9e8a6c0a5a1aaaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.4 MB (213372513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab5a501deac34703fab0df39608f6891ab727dbf38c6fdd746767f63086855a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:26:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:26:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Tue, 27 Oct 2026 07:26:14 GMT
CMD ["jshell"]
# Wed, 04 Nov 2026 00:33:55 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 00:33:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 04 Nov 2026 00:33:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 04 Nov 2026 00:33:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 04 Nov 2026 00:33:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 04 Nov 2026 00:33:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 04 Nov 2026 00:33:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 04 Nov 2026 00:33:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 04 Nov 2026 00:33:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 04 Nov 2026 00:33:57 GMT
ARG USER_HOME_DIR=/root
# Wed, 04 Nov 2026 00:33:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 04 Nov 2026 00:33:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 04 Nov 2026 00:33:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ca9b998955e8e4a2237b976ad7367168e0ef346678cc3677b7b2468e52457e`  
		Last Modified: Tue, 27 Oct 2026 07:26:51 GMT  
		Size: 139.0 MB (138950792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7b6c4df86be35fe5d1aec2e6b2f4393a53402dbf02798ee5fabecdfd6eea23`  
		Last Modified: Wed, 04 Nov 2026 00:34:36 GMT  
		Size: 30.0 MB (29983394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1814abd5eb796a6ac8a482ea585674c91480f3b6f3854178101b5ed7cd53bcaf`  
		Last Modified: Wed, 04 Nov 2026 00:34:35 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dd366c883e32fab40561517bdf235ac0c7913e58d12dc9ba0c14e100066d1c`  
		Last Modified: Wed, 04 Nov 2026 00:34:35 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f80686836f6478f6c25b7ce2431e3b8873ef8a1bb77e21467057047e54528b2`  
		Last Modified: Wed, 04 Nov 2026 00:34:35 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:47419a13477b977305011aca757bb6615866a6d7bcc107308d19715862c036ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2e5278340f92a0c9bdf40d1e96f21a6a65421e86f137214e6806e93189041a`

```dockerfile
```

-	Layers:
	-	`sha256:5fa3f486be4a1cb17735dd71c3cc64e8bf95ff5ac74d6b48ff65c97f7a82e44a`  
		Last Modified: Wed, 04 Nov 2026 00:34:35 GMT  
		Size: 4.3 MB (4256056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f6b58431ee4be436d54bb81165aed348636d3b73233f2c798cced1e431261b3`  
		Last Modified: Wed, 04 Nov 2026 00:34:35 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json
