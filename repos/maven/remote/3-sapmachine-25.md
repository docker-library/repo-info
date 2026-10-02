## `maven:3-sapmachine-25`

```console
$ docker pull maven@sha256:dc4ceac74106ddbdeac84591f5484558badb0830f706f8709819b12db0c1dda2
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
$ docker pull maven@sha256:37169e9eea8592a5bf3eca561e8b8ececea4464a676c7b72842925e92406044f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.4 MB (300439174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4267af6b8f4eb51b6efe726033045ebe82752500168e28ac54b7d1e9ecaf66`
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
# Fri, 02 Oct 2026 05:37:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 05:37:06 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 12:31:21 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 12:31:22 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 12:31:22 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:31:22 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:31:22 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 12:31:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 12:31:22 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 12:31:22 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 12:31:23 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 12:31:23 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 12:31:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 12:31:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 12:31:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5391686224f2f498db7f36a7579acbb5ec09a1ec2de24461b5b6359d87abf51`  
		Last Modified: Fri, 02 Oct 2026 05:38:02 GMT  
		Size: 226.0 MB (226021629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d336cba2d22a3c8e0a8541cac2083b9e3ca086399bbee5f2dda8dffcb75d542`  
		Last Modified: Fri, 02 Oct 2026 12:32:01 GMT  
		Size: 30.0 MB (29981015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71262eb36ae43bf35f214870b137b3872c98b205d77fd0cb9be1b490df3b5efd`  
		Last Modified: Fri, 02 Oct 2026 12:32:01 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6a2d1c1378616540ed69b410f360c4bf83890bb11a96db4323bb302b0364f7`  
		Last Modified: Fri, 02 Oct 2026 12:32:00 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb93e8d17ad212d29175cd5228a71c5497c2125789bacf09a69c6ab5bf0c3166`  
		Last Modified: Fri, 02 Oct 2026 12:32:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-25` - unknown; unknown

```console
$ docker pull maven@sha256:0b3f83dff1241487bbda5cb7ff4a0b9ed9f069aa7723aee76861eb56de8a26f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4315897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443ec5cbda9a23780beecfec0e0d50b7c063094f4e4a016ecbc9f0e1b2884193`

```dockerfile
```

-	Layers:
	-	`sha256:244e430215e482fd6c1d6a432240989fb64ea6b3cc609a2507e2e0cd77c73dfa`  
		Last Modified: Fri, 02 Oct 2026 12:32:00 GMT  
		Size: 4.3 MB (4301176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33a54cc1b711865baa920280947c510006086d03e120623a8f20f1d2a63edcd7`  
		Last Modified: Fri, 02 Oct 2026 12:32:00 GMT  
		Size: 14.7 KB (14721 bytes)  
		MIME: application/vnd.in-toto+json
