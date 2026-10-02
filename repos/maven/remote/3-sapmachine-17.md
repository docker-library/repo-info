## `maven:3-sapmachine-17`

```console
$ docker pull maven@sha256:d14079ceab15b6969d5601cb42a0e77d32f5398c6439d1fb9c1790d1235162af
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
$ docker pull maven@sha256:96ed4335d35bee6fcf0b156431e2a8b60a6dc1f4a04a85e47a9f6b285b8b2c6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272846163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b222bd6caafb5735bd9af98e5286feca4d368499034c60d62640c4ac56574cfc`
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
# Fri, 02 Oct 2026 03:43:34 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:43:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:43:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:43:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:43:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:43:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:43:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:43:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:43:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:43:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:43:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:43:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:43:35 GMT
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
	-	`sha256:df0ef3a9691137ea1d9e14ccdd5d312bc23a1901778e030db42be45351dbd9d6`  
		Last Modified: Fri, 02 Oct 2026 03:43:48 GMT  
		Size: 25.4 MB (25428659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed6c342b62d2bc6ff5c2c0a968fcc64378cb88dcb19179262b9612ecd568243`  
		Last Modified: Fri, 02 Oct 2026 03:43:48 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e052ab543926785b01f9b0e4b2e0fa3a4000f6d4fffcd88d9b43b97ae954945e`  
		Last Modified: Fri, 02 Oct 2026 03:43:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b171698c43974e5513c2b58af74f8ce2667d1d780b4dba98cee2f5d4ab3dd12a`  
		Last Modified: Fri, 02 Oct 2026 03:43:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:6b672370a7c17ce8d280bc9fd80a269b7e0fc4c6a77fd97db1de4f3a87b82efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95670e0b83313383cca338badfc358d8c4325cdabf2950e702650ff9c84e67`

```dockerfile
```

-	Layers:
	-	`sha256:fb8fe9d5ff38f4f39833a080bac6684321bc87ad8b9de6ad2461f8e4fd213dc5`  
		Last Modified: Fri, 02 Oct 2026 03:43:47 GMT  
		Size: 4.3 MB (4310296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:affabe474f6b4397a98a27d5a911b0b440a344ee83375db83c5d2a2cef0231b9`  
		Last Modified: Fri, 02 Oct 2026 03:43:47 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:55db6f7504099363dab7884cb96cfc3d67d720ebb7b8840dbdb982925834a6fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270752324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7876d1688a059406f70f2b02fd3409ca26c5ec282e6146b84c9498fcecc3921a`
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
# Fri, 02 Oct 2026 03:34:44 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:34:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:34:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:34:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:34:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:34:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:34:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:34:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:34:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:34:45 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:34:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:34:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:34:45 GMT
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
	-	`sha256:56c52630c7157cbec5d3630ef3189afb9947b4527b9f25e67cf18afa212d122d`  
		Last Modified: Fri, 02 Oct 2026 03:34:58 GMT  
		Size: 25.5 MB (25511191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bdbcfe298f4a4d861e3b14327df69452de4d5d726aa04177b8b46636c8310f`  
		Last Modified: Fri, 02 Oct 2026 03:34:58 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99153461a7e8e1d5e6e561fe2d4708317eb643ee8fe2c31407480613dbd1c772`  
		Last Modified: Fri, 02 Oct 2026 03:34:57 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04f674187f32e125ae10ac34d1837163a6388f5d8e1c1da89bb7f7c860e0d7a`  
		Last Modified: Fri, 02 Oct 2026 03:34:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:e7d882f210bea69d44d52aee9c9a44ec40f218abf0be0586b423479bed92c323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5e8c0621555248978d8dadbdfbd4525df4a4974b704ab912ef4772bceae85d`

```dockerfile
```

-	Layers:
	-	`sha256:231e0adb7f563bed03d98d0d413b56d5a1cbdffc432fecd10c970155ac7affe1`  
		Last Modified: Fri, 02 Oct 2026 03:34:57 GMT  
		Size: 4.3 MB (4316818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebfb478fef0c5baef44b489979e8f3f1a4e2ea276fab2663b2a5945621e215e6`  
		Last Modified: Fri, 02 Oct 2026 03:34:57 GMT  
		Size: 14.8 KB (14804 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-17` - linux; ppc64le

```console
$ docker pull maven@sha256:91d330a22d38a635fff59e4c5b143c720502e7207739a3e81b332d91bc8451fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281273048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f0b7597ffb3ba0a4eb389bec337744ef9c67d1a1c2349f0c9d561275fd2d423`
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
# Wed, 16 Sep 2026 08:15:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:15:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 08:15:11 GMT
CMD ["jshell"]
# Sat, 26 Sep 2026 06:29:06 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:40:45 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:40:45 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:40:45 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:40:45 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:40:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:40:45 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:40:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:40:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:40:46 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:40:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:40:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:40:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b167922c95469daf32f56430ae4305830ab438e5a3d282e6307fd25b2c131941`  
		Last Modified: Wed, 16 Sep 2026 08:15:52 GMT  
		Size: 204.3 MB (204297396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdafb336ed81ba08ad3d4fd5f8c896dadcce4e90e2b1a75828f7a6ab34bfe756`  
		Last Modified: Sat, 26 Sep 2026 06:29:51 GMT  
		Size: 32.5 MB (32538685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe4ff9c9cbf8b64257e8396e30f94cb92ac1e595efdfe5fc591bfbf4d21053b`  
		Last Modified: Thu, 01 Oct 2026 20:41:13 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276540b94d7d176987de543e69b2a1bcf9d4b89d47d35a02c3db38a194b0421c`  
		Last Modified: Thu, 01 Oct 2026 20:41:12 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640c37de57a9af12f9ffb559609f0066dbf2a57117bbe5ba4b0e3f30325ebb86`  
		Last Modified: Thu, 01 Oct 2026 20:41:12 GMT  
		Size: 152.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-17` - unknown; unknown

```console
$ docker pull maven@sha256:2894cd39b34e05d266fe3639bf38e842545600cea49e753830d00511d20562a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8606cc372bf3594406187b3cf7451c07c4b75180c9a022083f8dca5c4e321c59`

```dockerfile
```

-	Layers:
	-	`sha256:5542c42c0a487347d1a60d5be11eb7878d14bb87a9676dbddbfd5fbc6b3b661b`  
		Last Modified: Thu, 01 Oct 2026 20:41:12 GMT  
		Size: 4.3 MB (4310725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3b1302905072a621f93ab33594fd6d6bfc98af1525570d6fd744ddc067ac893`  
		Last Modified: Thu, 01 Oct 2026 20:41:12 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
