## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:e164341191843f19dbbaf176b29b5e09c32d830a1838264ce45d37bd4b90e483
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
$ docker pull maven@sha256:b44c7a7515a594dd65484adfbcad003986a621d7ad3645ff04eab8ebe54c61a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289618986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396f27b813f894aa3f7ef680b350aab3bd80a99c6d678d296026abdb767f3fe5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 03:31:37 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 05:24:50 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:24:50 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:24:50 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:50 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:50 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:24:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:24:50 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:24:50 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:24:50 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:24:50 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:24:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:24:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:24:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422e244f5219b629d63163ef161c24862e66744ce677f24255a0856cc474c539`  
		Last Modified: Wed, 16 Sep 2026 03:31:59 GMT  
		Size: 225.1 MB (225068004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444d345d25f51eb53492d71ae34ae13472ad838046ad4a4da8c06fcc08e03eeb`  
		Last Modified: Wed, 16 Sep 2026 05:25:05 GMT  
		Size: 25.4 MB (25425887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77147c1fe97e375f4bdce4ce13440d85f5b4f261417e38bbda9e8383d4de0ad3`  
		Last Modified: Wed, 16 Sep 2026 05:25:04 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49449d0907bb1d0058cf8789c1de7b225ba172482d2a287ae6108b8f0298d2a`  
		Last Modified: Wed, 16 Sep 2026 05:25:04 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8136b7b6d40f08187be92b20892ea4ebcd712cc5d885f64ece5cb32da4063ff`  
		Last Modified: Wed, 16 Sep 2026 05:25:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:0785c59face3bab779a9d49544b5c51cc969f0761f5663b09e1db67bcd1536bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b959c81cc7b16e3c3ee3901a792ec997d36be779f205b30146b02f60ac226619`

```dockerfile
```

-	Layers:
	-	`sha256:875dac564738acaba657f2728815f5ca51b53bcc916b36d984dd6e3cb1bdf373`  
		Last Modified: Wed, 16 Sep 2026 05:25:04 GMT  
		Size: 4.3 MB (4296315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4557d4547885306a4d8cec392fd444a0dd44ee760f1e176e693e5606258d563`  
		Last Modified: Wed, 16 Sep 2026 05:25:04 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d7247f6009fdccb0f3de3e4d1592c4c74ca5d95963df1109cab06caf559f6e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.7 MB (286654805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf52e97e5f653eb5e4eb1facf3a1213f6bcd9180b69ca890c4df554d700e6646`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 03:31:05 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 05:24:30 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:24:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:24:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:24:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:24:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:24:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:24:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:24:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:24:30 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:24:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:24:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:24:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c129aca8bc22d35e79a31855284e723bba866d469e42d68963befc6a580a97ac`  
		Last Modified: Wed, 16 Sep 2026 03:31:29 GMT  
		Size: 222.8 MB (222842183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77cd2973c8b43ac62702df3e65459881e08cf40717760d98994b54ca668fe27d`  
		Last Modified: Wed, 16 Sep 2026 05:24:44 GMT  
		Size: 25.5 MB (25510069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce24f01d2e31988c03d5cd144865481de3788205ae58dd7fd4c12010450c3d1`  
		Last Modified: Wed, 16 Sep 2026 05:24:43 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2214e9240072838ea9f3b23a13d4311da0800c4b74c3cff930eb56412f01116`  
		Last Modified: Wed, 16 Sep 2026 05:24:43 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:134febd811adae31969a5972029d84110f33185337eb31704035b6555d9552a9`  
		Last Modified: Wed, 16 Sep 2026 05:24:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:dbc3562039dd1c8feb0fd0adf1f0a3f371744f0546c33f7ba9773cb1a140a84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4317631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84960328138b27d167bf5a297cc6f5e17aad5e82d7e6d0e5e171b18a2c9fa9b6`

```dockerfile
```

-	Layers:
	-	`sha256:8f6e69332d575a55175faa95c7ab3f10975c721f4c705fdfdd93daf90f52955c`  
		Last Modified: Wed, 16 Sep 2026 05:24:43 GMT  
		Size: 4.3 MB (4302834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c45296d5e3086973d122c798d00bde1c82a19c8259c1b992c1ba8f0f33ed5ff`  
		Last Modified: Wed, 16 Sep 2026 05:24:43 GMT  
		Size: 14.8 KB (14797 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; ppc64le

```console
$ docker pull maven@sha256:18fdf080be21f8945593fc1376ddb9b3f6d9c216291c423ba65bac7dcdfb7e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.0 MB (297020475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f063fdfde8918ce54f1c5c7250bcd69ba748362d84d7d75867e9de7a7ea955`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:06:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:06:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 08:06:42 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 11:58:05 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 11:58:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 11:58:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 11:58:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 11:58:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 11:58:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 11:58:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 11:58:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 11:58:08 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 11:58:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 11:58:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 11:58:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 11:58:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10d792bb9375e06d1942bb194208d9cf2d4db7826627c00f23608f361a6c683`  
		Last Modified: Wed, 16 Sep 2026 08:07:33 GMT  
		Size: 223.3 MB (223312722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18f0217c765b1f13daa91c174306f7caa6d261f6b42af7b1320d7bf686dfc36`  
		Last Modified: Wed, 16 Sep 2026 11:58:51 GMT  
		Size: 30.0 MB (29969822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f97acef1242ca0c3affed3efe8b6ef93fbf0c0ee50fbbf89d28de433806dcae7`  
		Last Modified: Wed, 16 Sep 2026 11:58:51 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efeac70f9e2d322b533c0c283d8612eb26a91dbd3f9b0932b42074f5acc92680`  
		Last Modified: Wed, 16 Sep 2026 11:58:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637a8eb3acaa930ee5dc6280542865f698e3a46121d072ecd478417a127504c8`  
		Last Modified: Wed, 16 Sep 2026 11:58:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:cc9df4264070197d06b04875e073d3c2d17cc4da045817b5ed30c3284ce26742
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e877aa5f64665b79d2636a45f8930751baa5ca3f519c1d690da8e33c84f24f9`

```dockerfile
```

-	Layers:
	-	`sha256:c14eea924ab1b6e73983ccd5275794f05d24c708912579cf84a6612010a85387`  
		Last Modified: Wed, 16 Sep 2026 11:58:50 GMT  
		Size: 4.3 MB (4296126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9329ef304caa22b577aa09464b81c4320d6fc624b8685f3a044c6ad4e2f8dd73`  
		Last Modified: Wed, 16 Sep 2026 11:58:50 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
