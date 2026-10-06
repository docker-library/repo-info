## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:c3cbe38a1309730334604a7af37c1d94348f5b228189711f0ecf9783f2e0ce18
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
$ docker pull maven@sha256:699a602dc75adc8a95373fcb8544877e6d357d02056c546c406baa842e55b809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272846117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc114a959f8d43517cb26a16ed967940a0d26e336c0dd8760c7f485e351b9c56`
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
# Fri, 02 Oct 2026 01:39:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:39:47 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:32:58 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:32:58 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:32:58 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:32:58 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:32:58 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:32:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:32:58 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:32:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:32:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:32:59 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:32:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:32:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:32:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fe975ce366bd8a2cec7f851d3b7f2ce9c57f45bc11525c5214c12641361da8`  
		Last Modified: Fri, 02 Oct 2026 01:40:09 GMT  
		Size: 207.6 MB (207593056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8864fef6c90c078deba2359b8a9978d24df39f129a58917c77471de67019755f`  
		Last Modified: Mon, 05 Oct 2026 21:33:13 GMT  
		Size: 25.4 MB (25428623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66d1b3a760d4b030bb7bcf4eb04b0b790c527b3c451a23fdd830cf6d3be1c57`  
		Last Modified: Mon, 05 Oct 2026 21:33:12 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe6539df6aa68172e7702e0fe02290fda771d103573b6ba0221c0e634563ee`  
		Last Modified: Mon, 05 Oct 2026 21:33:12 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35e6f3f2d235162e54e1158479d03c171b8a24a568274b9021736fa114e4b39`  
		Last Modified: Mon, 05 Oct 2026 21:33:12 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:8fd92a6d9cc84163eca52b9a4a4f8a9d86558a501288e7f254a4d5bd6db8e194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210cc72adb0c578e5498c75b5fd254182a8c60d1682a43a81fb3034d9ecb00d9`

```dockerfile
```

-	Layers:
	-	`sha256:bcf38b3381a954b8f810c569631d28a66c9aba259d4b6d592373c35b4020d545`  
		Last Modified: Mon, 05 Oct 2026 21:33:12 GMT  
		Size: 4.3 MB (4310296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:534b9ea80b51d906d022f48b89425bbab2039328a9eed284f4eebfa73337596f`  
		Last Modified: Mon, 05 Oct 2026 21:33:12 GMT  
		Size: 14.7 KB (14670 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:faa052e1f3a73e4af7bd7ae431fe007219914cb39100a75d23fe093b86e673f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270752163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1254fb46f475bbb1b42fa2561d378760e430cc119bd303e66cb4ba31478276a8`
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
# Fri, 02 Oct 2026 01:39:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:39:50 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:34:13 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:34:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:34:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:34:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:34:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:34:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:34:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:34:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:34:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:34:13 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:34:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:34:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:34:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b70bb75505ec2fd9c0a92eec04498c07f71cc168e7d835477458f280fb8bbe89`  
		Last Modified: Fri, 02 Oct 2026 01:40:13 GMT  
		Size: 206.2 MB (206241021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6033ccdbb2fc56ba2b5bde18eabbdf6cbdb39196bc8ea768089245ec0ff7227c`  
		Last Modified: Mon, 05 Oct 2026 21:34:27 GMT  
		Size: 25.5 MB (25511034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187a1407bf5a716944c63182a44a0c1218ec55db21180f6e53df411b3fd895b4`  
		Last Modified: Mon, 05 Oct 2026 21:34:27 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e9ead2b75d450a602205e58ed6f78fa90810700eec5f229fd5f2a5a706f4955`  
		Last Modified: Mon, 05 Oct 2026 21:34:26 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04554b78f7c21dfce1e2bab08ca7b6f175b4c03ebc3a710c4d9e4122fe137897`  
		Last Modified: Mon, 05 Oct 2026 21:34:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:f94eeafaa36dfc925c0d6340e06f1ce79443e3fdf234261466a16d2481ea7936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4331621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e1926b50f6ca189b13bf9efb2c2f4307f668b8df49c1a0309eb35181d43954`

```dockerfile
```

-	Layers:
	-	`sha256:a71daeed6651734eca9ea7d43e4cc5fe77438f37d46fc6315dd593c9e275ab02`  
		Last Modified: Mon, 05 Oct 2026 21:34:26 GMT  
		Size: 4.3 MB (4316818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:612bfdca7fc712cd39e0f57b19d5d5e1e596457286265ef74c5c6d2b9533434b`  
		Last Modified: Mon, 05 Oct 2026 21:34:26 GMT  
		Size: 14.8 KB (14803 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; ppc64le

```console
$ docker pull maven@sha256:70368a27e26ae41cda6734406b624e47e4a02730287b24b5e92b4ca1ae52e69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281428785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39299a6bfb373cba9a035cd91e39e72c2c39ac5bcf019de7139f25e4a4056c1a`
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
# Fri, 02 Oct 2026 05:53:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:53:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 05:53:41 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 12:28:16 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 12:28:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 12:28:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:28:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:28:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 12:28:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 12:28:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 12:28:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 12:28:17 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 12:28:17 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 12:28:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 12:28:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 12:28:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a8e6f20dd2d90d2449c249b455abf3a0e4efd656c177491ea87be85f51d5ec`  
		Last Modified: Fri, 02 Oct 2026 05:54:25 GMT  
		Size: 207.0 MB (207011420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be32c535001b7ccf976c2ddc3387291658c8ee284169ef6af2d1a06e581ee0fd`  
		Last Modified: Fri, 02 Oct 2026 12:28:54 GMT  
		Size: 30.0 MB (29980835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17557810e1d70ad50727a8b22a7f4cdcbc7348a85fc00d1b6529eaf17a63e7a4`  
		Last Modified: Fri, 02 Oct 2026 12:28:53 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4331e0d1ed8298ca49fd70ab4db3926fa1aedc035eac865b3a80e073ea81d0`  
		Last Modified: Fri, 02 Oct 2026 12:28:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6805be8ecda52a81b230cbefae020bd4dcf906d3e88205aea956cfb428abef5a`  
		Last Modified: Fri, 02 Oct 2026 12:28:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:0617ccf204a201e6235b01bb3ccaaec86e51c82c2efd0bdd0ad17dc1bd8019ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e1c5239c900922683af8f0aa78b69372e19521c13cc13b55682a1415d0d6bd`

```dockerfile
```

-	Layers:
	-	`sha256:32ab0afa8b024aaa087acc6ef4e6aac405f8c3fb1906fdd928f97bd09b47cab1`  
		Last Modified: Mon, 05 Oct 2026 23:29:31 GMT  
		Size: 4.3 MB (4310725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af6c5ef1ddf54d96e4765229fce131511a2fd49ba65497efd2b67278dd670082`  
		Last Modified: Mon, 05 Oct 2026 23:29:31 GMT  
		Size: 14.7 KB (14720 bytes)  
		MIME: application/vnd.in-toto+json
