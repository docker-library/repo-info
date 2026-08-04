## `maven:sapmachine`

```console
$ docker pull maven@sha256:e6f06520af4d68dac2e97c73482c9f9625a3526f119fcc0160dc37a057f9248d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:sapmachine` - linux; amd64

```console
$ docker pull maven@sha256:36958244240b926a7eda5a3612fe3e4e6f0e0c78beee65d12840851d0498a0b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208193046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cebaffc19d169ebf11be47f62f579faa24837d80ac1408941ce1bd7d6d648e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:09 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 03:43:43 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:43:43 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:43:43 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:43 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:43 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:43:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:43:43 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:43:43 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:43:43 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:43:43 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:43:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:43:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:43:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ad2c4f0387f1436e571d224ce44c10bbb1dcb151b5d27710b812e053feb824`  
		Last Modified: Tue, 04 Aug 2026 01:48:27 GMT  
		Size: 143.7 MB (143659581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13aa7c1dd62f371d6114ff38f7970724a772c664e9926a8008e47b9199e94924`  
		Last Modified: Tue, 04 Aug 2026 03:43:56 GMT  
		Size: 25.4 MB (25421378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e87ccf476e7c6f1807683fe94132702afe0331a285da42b4e2cab620317fb10`  
		Last Modified: Tue, 04 Aug 2026 03:43:56 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ee5c3620666b833415e5fda180af58ca40c66e1f73b730a82768a85ff89746`  
		Last Modified: Tue, 04 Aug 2026 03:43:56 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5494ad62f8ec01aef4de66eb590596102c0375eccb1123594d475271873ba08d`  
		Last Modified: Tue, 04 Aug 2026 03:43:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:2c72ff74f0b85d7b43f57f2ee5077f7d0697545d3a9f93f9cb1f6c2017fba297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4266971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f222334a75b773078ff7f6177369b6b44e6c6279cab897deb1b388bed4d863d5`

```dockerfile
```

-	Layers:
	-	`sha256:230440b609cd9daa140863aadb93ffc890908ac7e99716a518aefa0d5d438831`  
		Last Modified: Tue, 04 Aug 2026 03:43:56 GMT  
		Size: 4.3 MB (4251064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cf7c12bd354ef822aff6f20ee39266c65a0caba6a596de4a88209e6d1a095b0`  
		Last Modified: Tue, 04 Aug 2026 03:43:56 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:sapmachine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e1331ae5fe575b18ef4fde0ebf554f7e54adf7f5101a498131851421ff936435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204039214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1417916a5b4162c3eea951137293dfaa02fa9af28d2afdde778e896716d0a903`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:21 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 03:43:49 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:43:49 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:43:49 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:49 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:49 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:43:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:43:49 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:43:49 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:43:49 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:43:49 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:43:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:43:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:43:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9d6a2381a3fea5888b2e004a5d98cf71d29312b5c16cab029150e7b6620c27`  
		Last Modified: Tue, 04 Aug 2026 01:48:40 GMT  
		Size: 140.3 MB (140299446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f97c589c75e09210ee84def215ded862d4b7cea72d1faac47d97350a3c96c6`  
		Last Modified: Tue, 04 Aug 2026 03:44:03 GMT  
		Size: 25.5 MB (25491975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da301723ef74945e69c90823d53f1e63367f2886104501ae05397ecd08e83633`  
		Last Modified: Tue, 04 Aug 2026 03:44:02 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9227fc46155b2f1df439529e1896912240cd1bf7eb0e66db121a20143d78125f`  
		Last Modified: Tue, 04 Aug 2026 03:44:02 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5072420720387d89e1ced06e735e50153cb0d3bcdad04e7c642107e95e32e`  
		Last Modified: Tue, 04 Aug 2026 03:44:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:8fc90ce2eb84f68e8fbe1121ab66ef3e8c7f355d38a908cb6a9a636c834020ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baf342d4ddf7c1350176abce5f120882fa9f077f8bf77cb70abe7a6be732b1af`

```dockerfile
```

-	Layers:
	-	`sha256:9917f9f907af79bbc62218d3c4a289d7363e42a091de52b0228d1b2b3d97e446`  
		Last Modified: Tue, 04 Aug 2026 03:44:02 GMT  
		Size: 4.3 MB (4257631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57734f460276947997f7a3fdb294b22f1f6ae30d6aaf403d5a98dd2e7f2ff989`  
		Last Modified: Tue, 04 Aug 2026 03:44:02 GMT  
		Size: 16.1 KB (16088 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:sapmachine` - linux; ppc64le

```console
$ docker pull maven@sha256:bcb7b5a4cbf93eddb0ffae638e53cb11664215a628f1b50fd22f2a52de89b37a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216572773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b84565ce9b8464bfc5e68e26653625c3bfef110baba56568329f8ba878b3112`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:21:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:53 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 21:21:58 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 21:21:58 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 22 Jul 2026 21:21:58 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 21:21:58 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 22 Jul 2026 21:21:58 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 22 Jul 2026 21:21:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 22 Jul 2026 21:21:58 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 22 Jul 2026 21:21:58 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 21:21:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 22 Jul 2026 21:21:59 GMT
ARG USER_HOME_DIR=/root
# Wed, 22 Jul 2026 21:21:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 22 Jul 2026 21:21:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 22 Jul 2026 21:21:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadc79b708fb85c165ff1e051cd5a08bd791507ec3a4ea0c28045f6216f9b88c`  
		Last Modified: Wed, 22 Jul 2026 18:22:26 GMT  
		Size: 140.4 MB (140375504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd2181320f76161944fd92b187d3ddcf1983b08542757b29e467b63d5a880b6`  
		Last Modified: Wed, 22 Jul 2026 21:22:27 GMT  
		Size: 32.5 MB (32522835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded4f9597a6d60adbd65c2a919c724cf84f27787473fb763315169ac9396fd9e`  
		Last Modified: Wed, 22 Jul 2026 21:22:27 GMT  
		Size: 9.4 MB (9359948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55e383e1fdc377dfebe8abb463c170cbd449955a25681c78fb2e170e026a0e0`  
		Last Modified: Wed, 22 Jul 2026 21:22:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f2f183651ddffab330cfac0d09effb470c987cb57b833d4654a84a1e0e8553`  
		Last Modified: Wed, 22 Jul 2026 21:22:26 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:sapmachine` - unknown; unknown

```console
$ docker pull maven@sha256:e038a32ff66cfaef0f9d52d64ea346216170bf411c43115d0b176b3d0ca872d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4268788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19e09112ebdbe8f02d947f0f17ccffc0dc44cf539ba29615a9fd6b1bb92d203`

```dockerfile
```

-	Layers:
	-	`sha256:0f90fcb72421733bcfc55109b660f3e9da36e8e0ef649ea55571497832c94741`  
		Last Modified: Wed, 22 Jul 2026 21:22:26 GMT  
		Size: 4.3 MB (4252807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55e56d77a72247c49b2cb40c80b5fb246a562d50412d264601b4cc3a29693e4`  
		Last Modified: Wed, 22 Jul 2026 21:22:26 GMT  
		Size: 16.0 KB (15981 bytes)  
		MIME: application/vnd.in-toto+json
