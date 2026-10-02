## `maven:3-sapmachine`

```console
$ docker pull maven@sha256:992b18b6ffa6c58c13d7de43cba9196dc8754703869cb1b8025dd9898a7902b8
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
$ docker pull maven@sha256:18ea3d923d2c479681fb391338b6fd60a3440ea30a860b3ef7cdcfadfab176f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207269781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715c08c9f44069b60f11c6d8a4ccf9748920e58ebfcc6b8a63876c50f5f83b50`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:25 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 03:44:03 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:44:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:44:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:44:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:44:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:44:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:44:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:44:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:44:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:44:03 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:44:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:44:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:44:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2217ecf3af7033f1970afb35656af45b31f20fccc7b60e797141affd02a99ce4`  
		Last Modified: Fri, 02 Oct 2026 01:37:44 GMT  
		Size: 142.0 MB (142016713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ecb1c9866a04250975e29b7f312f5b0632db17360169a60cb12f44c6a8e6436`  
		Last Modified: Fri, 02 Oct 2026 03:44:15 GMT  
		Size: 25.4 MB (25428619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8900cd003e516ef82072e5fef146cc3105060a343381a01d876c01392092bd`  
		Last Modified: Fri, 02 Oct 2026 03:44:15 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cce6da56cf4da969ab659829c8861de9ad6064ca6a354dc06299cfc07b61bc7`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f084d4db5192a502dd11a72bc66518e3e03fbcd10149c5178456374cac34cb13`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:828d7a98498ec2e72906e017bd8639b85f97e07645a875a151948476bf038aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b871fc6bf29437345a735610d3d39b5d22cc086632a7a55ebabc723653b172`

```dockerfile
```

-	Layers:
	-	`sha256:5178fcd77b738b483cfc02774716325a0c154f67e87228d3208da5b3563d24a2`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 4.3 MB (4254851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95a98da59f0ba68ed27ce62ef0fc84a4bc44dbd04fdf69dd14f2ab75f3df73d6`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 15.9 KB (15915 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b7277273f872e8f5f28ba51c71641cf4a4aa19024d1d57e7c77424612e8c7c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.5 MB (205473610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d04fbd43306a275c297934bd7615fb39753bc0406dfcdfc23c08af0282ec76f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:20 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 03:35:37 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:35:37 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:35:37 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:35:37 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:35:37 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:35:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:35:37 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:35:37 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:35:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:35:37 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:35:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:35:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:35:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f185f27a7c697c3b58dc000e5b1188de366f34907f924fc84ee70c35fbc86c`  
		Last Modified: Fri, 02 Oct 2026 01:37:40 GMT  
		Size: 141.0 MB (140962447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb88a6cef3c38a13cfe4e0c96feeefeaaafd673d3278fc97cc35b0b55ade9cb`  
		Last Modified: Fri, 02 Oct 2026 03:35:50 GMT  
		Size: 25.5 MB (25511067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b71a1486934dcef1ad51adcea5675d4055ca17a7e92f80dbb3ce2ba9af2c39`  
		Last Modified: Fri, 02 Oct 2026 03:35:50 GMT  
		Size: 10.1 MB (10059004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276c62201dadf31d52c145d787014a1542a41f2d0d5e60bae61e0add487d8fb4`  
		Last Modified: Fri, 02 Oct 2026 03:35:49 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829679b1765fcb9f01b2cb0b22e5c4e144dfde2801e7aba4056352ce1bbfd1a6`  
		Last Modified: Fri, 02 Oct 2026 03:35:49 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:2af09571d97ec5193db329c9fd11ec3cafc36bb6ab39dfd8540a710185ebef26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f24c6d2e4eb66e23ef006d9d3c8521f953b24c1f64a19df0640213fb187a05`

```dockerfile
```

-	Layers:
	-	`sha256:753e8c5450688349b511daf87a1f05034cccc42ba4250fb008a2e8da3a8f12df`  
		Last Modified: Fri, 02 Oct 2026 03:35:49 GMT  
		Size: 4.3 MB (4261418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc25428ba7a5f35eedd7b289da9e3a7ac556cdcfc5031fb19fb82b68492dc450`  
		Last Modified: Fri, 02 Oct 2026 03:35:49 GMT  
		Size: 16.1 KB (16096 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine` - linux; ppc64le

```console
$ docker pull maven@sha256:806b048d999633bec5fdec72a1ea0e707c48e53e7a4925aa3ca3c33c3a690ed9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (216023862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2f47e2b724d25843e1031a220e71ab11f135ab08ff9ab37aa41f373b2bc7c5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:29:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:29:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 05:29:17 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 12:32:37 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 12:32:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 12:32:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:32:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:32:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 12:32:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 12:32:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 12:32:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 12:32:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 12:32:39 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 12:32:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 12:32:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 12:32:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28152dbd07da683f6d827584f96f1a495b4732ec0a0a595bb114d5173e50096`  
		Last Modified: Fri, 02 Oct 2026 05:29:58 GMT  
		Size: 141.6 MB (141606329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ee894a7cc6bbcd79a19832804cddeb865b65a2f400edc9f09940f66d54275ab`  
		Last Modified: Fri, 02 Oct 2026 12:33:15 GMT  
		Size: 30.0 MB (29981009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab9e2900630717629775c4557bfc63fc0ab066303a2c993f54ee8b275caa083`  
		Last Modified: Fri, 02 Oct 2026 12:33:14 GMT  
		Size: 10.1 MB (10059009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e9ad6b63c44399c4ace8fc7564c59e5df442dcb1459fbc8abcf58e3eeaec92`  
		Last Modified: Fri, 02 Oct 2026 12:33:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d381309f9597f02025b5f4ada28683f3073f36f5c0626805b2ecf829eb4c9ae`  
		Last Modified: Fri, 02 Oct 2026 12:33:13 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:103c67aa6b518d671f7ee25ff35d83e29ba82a2578542a4d19ca050cc489cc32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db54d29445e48219d1a548741b92f3b2afe1fba1761935384e5316411ebab4c2`

```dockerfile
```

-	Layers:
	-	`sha256:753e633646306a076103efc58455b68daa19a09f0a0a9ad7e8bf101e8e01b82c`  
		Last Modified: Fri, 02 Oct 2026 12:33:14 GMT  
		Size: 4.3 MB (4256620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1492246fe6145df82a00157c589d51e0b3b94ed14440826e5f884141afd7bb0b`  
		Last Modified: Fri, 02 Oct 2026 12:33:13 GMT  
		Size: 16.0 KB (15988 bytes)  
		MIME: application/vnd.in-toto+json
