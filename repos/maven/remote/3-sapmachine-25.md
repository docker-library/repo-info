## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:00524da4d791355c570656347dd7020c5c1d72cbdd46f942c3f7d458a2e32551
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
$ docker pull maven@sha256:b6abe5aac51bc275871a3b29b77aa6c5e35e7997466cbc40f9be4550dce53aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.7 MB (292747375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da003c123a6196473f997f5f29825fd827dfecce8d223e738bc36059dc40b6c`
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
# Fri, 02 Oct 2026 01:38:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:15 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 03:44:01 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:44:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:44:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:44:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:44:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:44:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:44:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:44:01 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:44:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:44:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:44:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:44:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:44:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35c9d77473b42aad8f4679ecf3a478559016c50a04869f034002a80c7641d95`  
		Last Modified: Fri, 02 Oct 2026 01:38:37 GMT  
		Size: 227.5 MB (227494193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac558d064212a11ea0fcc75bf9f7b2db9fe3ff0c6d40fd316a458e20c40dbbf8`  
		Last Modified: Fri, 02 Oct 2026 03:44:15 GMT  
		Size: 25.4 MB (25428753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05833ff91f07649ec1661519454514efdbe19edfec36bb408f411351884ee6b2`  
		Last Modified: Fri, 02 Oct 2026 03:44:15 GMT  
		Size: 10.1 MB (10059003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be578b7957ac6e9e9398f3cc8f2eaa75534aeb032a9e08f659b9f738724b39bd`  
		Last Modified: Fri, 02 Oct 2026 03:44:15 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492302209ee93ef8c8e856bffe2b82e316a223a464bb36da0c6f380fa20943ad`  
		Last Modified: Fri, 02 Oct 2026 03:44:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:628e76ae81602f01ad0fe1ae49a801d8b71d4b45223e9b5b58a42fbb1bbe4646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4316036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8bad426f6e2d1ac8bcffb964acc76ab490c41d753bdd6e942c65ccee75cdee8`

```dockerfile
```

-	Layers:
	-	`sha256:32939cc9274396b9f4a65c5f28e0c43ee5bb2b40eab49ed5cb75576ea1ed31f0`  
		Last Modified: Fri, 02 Oct 2026 03:44:15 GMT  
		Size: 4.3 MB (4301365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:558bede8ecfbc082b0447a98b6a84eef197e071cbae0b736873c4240bffeac8d`  
		Last Modified: Fri, 02 Oct 2026 03:44:15 GMT  
		Size: 14.7 KB (14671 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f0cf44945b9eaf22f939eb5abf07e3c228582cf24f348a9ba371db7d6720f302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289641845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00937b9d3e548d0242c0e09ba684f49341c3b4a1308d1387264e434df5d7cebc`
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
# Fri, 02 Oct 2026 01:38:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:16 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 03:35:33 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:35:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:35:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:35:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:35:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:35:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:35:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:35:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:35:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:35:33 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:35:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:35:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:35:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b229823850e34f4e7e602d19219ffc806cce05ca69d2da90aa2b0cc02b234f`  
		Last Modified: Fri, 02 Oct 2026 01:38:39 GMT  
		Size: 225.1 MB (225130713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9681a4f113f9dea31ad7883f499a1815da8ea715146c850518823fac71ee3d1c`  
		Last Modified: Fri, 02 Oct 2026 03:35:46 GMT  
		Size: 25.5 MB (25511021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5c68a5ed7bece0c9fce5e44dfb5b1beee21a611cfe797df0b85957bedfa28bc`  
		Last Modified: Fri, 02 Oct 2026 03:35:46 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d6722b0b33ad14196b5b30dcc2c38f884b1e27f388f68e8d22244cc897ecd0d`  
		Last Modified: Fri, 02 Oct 2026 03:35:45 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74192d4b378bf5dd954e02229d902e26da7ccff36bfe41ac28e14d5cc8428345`  
		Last Modified: Fri, 02 Oct 2026 03:35:45 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:eac467d5ab98a786b22e2be86a2d9c04aacd06b1c62bf2b40a6e94f06ae3e86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4322688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6fdf4a04bc598b927afb9f89c7c9aa0c7d09926bcd4a85ddfd26a0eca3b87a`

```dockerfile
```

-	Layers:
	-	`sha256:d9b854cce5cc2b937471bdc3d2e653da8b9b1e51dc505a30983957a668c70dbe`  
		Last Modified: Fri, 02 Oct 2026 03:35:46 GMT  
		Size: 4.3 MB (4307884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b65eeedc8c5d552dc161739d435cc5ceb458a270f0521810375230b2cea98a65`  
		Last Modified: Fri, 02 Oct 2026 03:35:45 GMT  
		Size: 14.8 KB (14804 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-25` - linux; ppc64le

```console
$ docker pull maven@sha256:8fbb9d03a8e4d7273ff6eaa1dd84be2e75bdcee76c93ea8c719bc5cc76f0cbfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.3 MB (300288797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d07cb538cafcebe186127da5cfe383fd565cbc73f3eacd31ea2dc113254b7c`
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
# Sat, 26 Sep 2026 06:33:10 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:41:31 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:41:31 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:41:31 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:41:31 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:41:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:41:31 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:41:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:41:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:41:35 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:41:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:41:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:41:35 GMT
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
	-	`sha256:1b47524f633e1a78dc0b27857e6f11dae2140aca12d6190eb0f7c5cab58cbe35`  
		Last Modified: Sat, 26 Sep 2026 06:34:00 GMT  
		Size: 32.5 MB (32539103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39178cb5e71983311d2c08a7750da4606cf34a7e7359ca903add3c86ce17649c`  
		Last Modified: Thu, 01 Oct 2026 20:42:12 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e9928431b5326b53137862c49362149edada3adf50c489933151dd7020c635`  
		Last Modified: Thu, 01 Oct 2026 20:42:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e18cfeef3eb5cf642dea0a9639167fe6ab7215c353e59ebbfc7394b95d7ab4`  
		Last Modified: Thu, 01 Oct 2026 20:42:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:37ef71c81b50f1e3017cac04ac66801cbed9c394706443705f4799f4e96a8022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4315897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f273e55a3dbe59c03b4162d133a86625a79a4266d1d01af5f808020f52d110b7`

```dockerfile
```

-	Layers:
	-	`sha256:f044e1b6e4d7a83d53fb0f54619a399d040e0ba6ba66135c0dc04d7148477ac4`  
		Last Modified: Thu, 01 Oct 2026 20:42:12 GMT  
		Size: 4.3 MB (4301176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b51955579657174ef6f49b343212d37ff16a7b90dbe88ea38b13ca7fa2e0dd3d`  
		Last Modified: Thu, 01 Oct 2026 20:42:11 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
