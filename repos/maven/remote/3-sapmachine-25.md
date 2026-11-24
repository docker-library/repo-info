## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:01e7052ac4b8e8fadfbb1d3482c9bccbb022e54dc445990b052c33558d358159
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
$ docker pull maven@sha256:afa81cdd53939f2400a4917a4fd95f205c9928351e0eca699a78b5686e3c2c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 MB (203395126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028b14f15b34f7d3e1e8dc5d44ac68603287355b8f5a5598cd67c3e25e2ccade`
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
# Mon, 23 Nov 2026 20:13:33 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:13:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:13:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:13:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:13:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:13:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:13:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:13:33 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:13:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:13:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:13:33 GMT
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
	-	`sha256:c1768f62bbc1f98e311ee55d37f751d8bf71c42035389df4783caf6cbb426ee8`  
		Last Modified: Mon, 23 Nov 2026 20:13:45 GMT  
		Size: 25.4 MB (25432244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba107f8e19bd6cb81f28a671345e8fe40d0f0999ac08c6ca0fe0472b2cbd5e71`  
		Last Modified: Mon, 23 Nov 2026 20:13:45 GMT  
		Size: 9.4 MB (9351292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9aebff580cd3dd1e21d1f1dc68aaccffefd44ee0d101f8f4a08aa07c60e22f7`  
		Last Modified: Mon, 23 Nov 2026 20:13:44 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c768797409b0b036da8f6e1746dad8b77d9621b63aa9fad92fd34864f912eac7`  
		Last Modified: Mon, 23 Nov 2026 20:13:44 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:d49c6c44d0be22451cd4ce3f0dac82603f98217c0f9728a88463a03d3c8a7fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4265171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:707441c8f850da41f49927d07721b2fb34dd9d31790de6e3385f9450d7721f62`

```dockerfile
```

-	Layers:
	-	`sha256:5c5f60ef3c424ecabfb58cfd0c6e5223f339e87b2e3d67a26b8e204365a097fe`  
		Last Modified: Mon, 23 Nov 2026 20:13:44 GMT  
		Size: 4.3 MB (4250504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2ca8b18ba120ddc0473588e753b3392ca514f1a8a75f019345b7db384928021`  
		Last Modified: Mon, 23 Nov 2026 20:13:44 GMT  
		Size: 14.7 KB (14667 bytes)  
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
$ docker pull maven@sha256:bca0597e4c31c75c50ecec42e7cc52d31c582adeae44a00150fed0370c33a060
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.4 MB (210427973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0b27411e7375a94933eb5b2ed8203c3cddc7a63a2e32d1dab979c767202a8a`
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
# Mon, 23 Nov 2026 20:32:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:32:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:32:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:32:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:32:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:32:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:32:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:32:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:32:30 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:32:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:32:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:32:30 GMT
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
	-	`sha256:6cd329e73606ab7eacd5080c6af6cc3312a13353253a3c4e8082b6e06405a4db`  
		Last Modified: Mon, 23 Nov 2026 20:32:56 GMT  
		Size: 9.4 MB (9351273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9230bddb7e0539a68dab80a890a16611d20e61cc433c1715cf330ed4cd66ebfb`  
		Last Modified: Mon, 23 Nov 2026 20:32:56 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee37f195713127a696f4460fab361515bae14da735677dd7eafb26f87962750e`  
		Last Modified: Mon, 23 Nov 2026 20:32:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:4356621a5a1eb78e201b3d0e71852d062d4bc34d3e0fea973f38934f5f6c3068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4266966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b257cd703a7d144f6f1c20f7de000b84de5c5de6041c37a516a1b3f0e6e684a`

```dockerfile
```

-	Layers:
	-	`sha256:c7b2299e235dd9a00ee571d62eff70372790981c5e39aa77912ee8d181677425`  
		Last Modified: Mon, 23 Nov 2026 20:32:56 GMT  
		Size: 4.3 MB (4252249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67509399c6082dee30f402576e3db9139666c5417c1cec3a78fe1198ae9e5ed6`  
		Last Modified: Mon, 23 Nov 2026 20:32:55 GMT  
		Size: 14.7 KB (14717 bytes)  
		MIME: application/vnd.in-toto+json
