## `maven:3-sapmachine-21`

```console
$ docker pull maven@sha256:b06cf9bdae4b1e96f42dfa52d869ccc65e131e0294b9cdc66b38bf5c6278b54d
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
$ docker pull maven@sha256:84e6ccaaa16961590d38830d5281c54e7f70b7f2c66836554d0621aff2c15397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.0 MB (286985249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea17a33f80d2a532390261dc0864e7a4f923149e3147e1fd50f8fe868b0d2070`
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
# Wed, 16 Sep 2026 03:31:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:48 GMT
CMD ["jshell"]
# Sat, 26 Sep 2026 00:24:39 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:24:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 00:24:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:24:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:24:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 00:24:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 00:24:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 00:24:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:24:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 00:24:39 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 00:24:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 00:24:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 00:24:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910cf9f393479ed11fdb53b9660eeeaa76e5a8126dd11e8e18ed92c60abaaf89`  
		Last Modified: Wed, 16 Sep 2026 03:32:12 GMT  
		Size: 220.0 MB (220023561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76de08cfc9671f491448c6ce1006725a1479bc7cabdacd55b55d99d1a529bab`  
		Last Modified: Sat, 26 Sep 2026 00:24:53 GMT  
		Size: 27.8 MB (27836603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f4ead568e9dbb4d0646cba635ffd81bc56f0457c5b8c02d46fa2c045fd4988`  
		Last Modified: Sat, 26 Sep 2026 00:24:52 GMT  
		Size: 9.4 MB (9359964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2f5d57392bf63c0c2afba028b919a57f4716c3442bb4854b30694e7aac9516`  
		Last Modified: Sat, 26 Sep 2026 00:24:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8aab5279761010a36eec940a89d7f87a6066c21f4e9579e0c5baea6363caf8b`  
		Last Modified: Sat, 26 Sep 2026 00:24:52 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:d5f7272fd816d77906eba37241ff0d974314a3b200de0b0d2d6b395305c0c86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4321529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be9e534ee85531025242cbd2cdb0441b0daafb4066dafa278ab2b0f0cb7e41a`

```dockerfile
```

-	Layers:
	-	`sha256:fc22f92460505e1c4782c687fc732b9f311ca5a3ef457090d6f56a475c82fe9b`  
		Last Modified: Sat, 26 Sep 2026 00:24:52 GMT  
		Size: 4.3 MB (4306865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bcd5ee4608f4d407f7d8ca947552ecdd9e3e2fc09ba59e5ac2ed5fc4699d5cc`  
		Last Modified: Sat, 26 Sep 2026 00:24:52 GMT  
		Size: 14.7 KB (14664 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:74d6d279eb56c9357ec95faa21de4becfcb34eb46ad3e007e4dc7583925a62b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284416337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82fc5b3ace759fdd38ee09cc97de6b5c2a68f7b8c255839aebb0fb9081a9c61e`
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
# Wed, 16 Sep 2026 03:31:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:45 GMT
CMD ["jshell"]
# Sat, 26 Sep 2026 00:20:11 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:20:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 00:20:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:20:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:20:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 00:20:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 00:20:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 00:20:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:20:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 00:20:12 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 00:20:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 00:20:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 00:20:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a2785742f6dcd4f6e5a5ffbf207ba42265c55df807b8cf0e61e7589244ac24`  
		Last Modified: Wed, 16 Sep 2026 03:32:09 GMT  
		Size: 218.2 MB (218231132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9faad668f9a20464f83e186781845d221284e57f934cc3fdc4368da298a4f156`  
		Last Modified: Sat, 26 Sep 2026 00:20:25 GMT  
		Size: 27.9 MB (27882651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33b429639c77059b0b9c9a2953e5771480726d5da5c913af06d022cdeeb0aa1`  
		Last Modified: Sat, 26 Sep 2026 00:20:25 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb2d78e8d1e1cad83eed177ac9a1e90a0bc773053275769392277f2f03baef9`  
		Last Modified: Sat, 26 Sep 2026 00:20:24 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc5afb863804f5a04374198c285571495451a29010b90076d3c729f323173ce`  
		Last Modified: Sat, 26 Sep 2026 00:20:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:8a2deabf0107022e8d093269bb2c9f0bed4a040f221a16008803806a65ae244c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4328183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:609a512ee5944344dde06f13f9f349d099a163f99666b9e70fb06c723010e15f`

```dockerfile
```

-	Layers:
	-	`sha256:07ca476a6492389080510bd79d8ccb355bbbe4536578152960e90e0c0100e3b9`  
		Last Modified: Sat, 26 Sep 2026 00:20:25 GMT  
		Size: 4.3 MB (4313387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fe8360afa961e6d6ddb65887eb20eb17a083f9eb63f126bfb5b89d23569117a`  
		Last Modified: Sat, 26 Sep 2026 00:20:24 GMT  
		Size: 14.8 KB (14796 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-21` - linux; ppc64le

```console
$ docker pull maven@sha256:92f75aecf495ce5e1211710bc20c8712165540497d04206ad8c64e3355b44584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296284235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f5f545a7de839b2c002b41968172a59b83ecff3f9ecc0b93a5a15c8ecdc945`
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
# Wed, 16 Sep 2026 08:10:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:10:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 08:10:53 GMT
CMD ["jshell"]
# Sat, 26 Sep 2026 06:31:06 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 06:31:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 06:31:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 06:31:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 06:31:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 06:31:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 06:31:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 06:31:09 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 06:31:11 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 06:31:11 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 06:31:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 06:31:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 06:31:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dd36c08d37ebf6f030a38732564c425dad27584ed4c0c6cdcb7f796e13569e5`  
		Last Modified: Wed, 16 Sep 2026 08:11:35 GMT  
		Size: 220.0 MB (220007526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b67bbe9829b713141c56220e1a0e7234d30cf20695eb7a31c995fe7aac8f99`  
		Last Modified: Sat, 26 Sep 2026 06:31:54 GMT  
		Size: 32.5 MB (32538768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac12fac5f6ac8f87c15d1a29d03d91c56ab0fb98091d483b20aadcd3ccc4882`  
		Last Modified: Sat, 26 Sep 2026 06:31:53 GMT  
		Size: 9.4 MB (9359977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ddb96645b0ce022f6ac110ade21325a5f38816c013c34366ccad46e0f170a5`  
		Last Modified: Sat, 26 Sep 2026 06:31:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4267dc92289620458744455de883eea5fc59c627ab7b98475ce020a8d35c3d`  
		Last Modified: Sat, 26 Sep 2026 06:31:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-21` - unknown; unknown

```console
$ docker pull maven@sha256:b5f1ea3b36a80299a651386428dda21209f709a4705cc9b967de969a2ca7ce5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4322009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa24aef24b20b51b16baf23cfff308f202f8465954221aa3ef4913671049191`

```dockerfile
```

-	Layers:
	-	`sha256:00466f02ccbadbb8af3617fd110185ca27a698e6dd7da62a1412a390f6af62ef`  
		Last Modified: Sat, 26 Sep 2026 06:31:53 GMT  
		Size: 4.3 MB (4307294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e01497c7e516a031b01bd9db9557c5d156376de255d6016f3edb0ba0ffc4ba1`  
		Last Modified: Sat, 26 Sep 2026 06:31:53 GMT  
		Size: 14.7 KB (14715 bytes)  
		MIME: application/vnd.in-toto+json
