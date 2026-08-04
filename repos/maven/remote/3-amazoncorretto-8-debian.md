## `maven:3-amazoncorretto-8-debian`

```console
$ docker pull maven@sha256:eea96395aafd1589e1deba861b0d408f7d73b338f0e9c55dfbff78abe7a5cfcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian` - linux; amd64

```console
$ docker pull maven@sha256:de983ca717689543f242bb286d613b796426d8671ead4f81c52e25b51964bbec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148725230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4466eaad4fa8fb46b2eca65c2bb8da208527d199e7a6e93249871e5d14a09ec`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:43:26 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:43:26 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 03:43:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Tue, 04 Aug 2026 03:43:26 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:43:26 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:26 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:26 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:43:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:43:26 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:43:26 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:43:26 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:43:26 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:43:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:43:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:43:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e8d40ffc9c210911ae02288ee8131dbb625cf46845ba058c3149658fbe8a1e`  
		Last Modified: Tue, 04 Aug 2026 03:43:43 GMT  
		Size: 109.6 MB (109583352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56d04c3a3b01fb23603bce13452d8be8fb9a0048c4f56104f0195b2fff80bd0`  
		Last Modified: Tue, 04 Aug 2026 03:43:40 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0bb76c6e9900c79c626fab99bcc33aae3ed81473bb01cf0f2b74fdf1fb341c`  
		Last Modified: Tue, 04 Aug 2026 03:43:40 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baf4245a7b01e21a91a4e989bf14c9d33212b7ee104e3d62a3a915044999b53`  
		Last Modified: Tue, 04 Aug 2026 03:43:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:4442bc003ed3faa26f35018a3b528914ef7c7009e80fabea61d74d67f16015bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4015042c1521f8dc28ce221ca2e255735e6f99ef4683eb89c5e8c46495cd5be9`

```dockerfile
```

-	Layers:
	-	`sha256:2d8abfb50f040b5e400323e8c870a6b0faa796d38239c16a6408e4c7a895d809`  
		Last Modified: Tue, 04 Aug 2026 03:43:40 GMT  
		Size: 3.0 MB (2964723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7864062275940427fbd3ff053c10aa16d9079fece8e57420550abd887e90a456`  
		Last Modified: Tue, 04 Aug 2026 03:43:40 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:904c69d04d497ab1d0cb63fc9014f0bc208aa29b1af7aaa385b27fbbdf8d6bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148902635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa81ad780700c393bd7c8d6bd1be3a7809e842e0e93ca6b4a8bd6cb99c50ef3b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:43:21 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:43:21 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 03:43:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Tue, 04 Aug 2026 03:43:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:43:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:43:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:43:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:43:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:43:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:43:22 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:43:22 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:43:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:43:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:43:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e7a45313f168fd2aa768187db382ad6f99c5c3e86d381d94498fd1b961e3de`  
		Last Modified: Tue, 04 Aug 2026 03:43:38 GMT  
		Size: 109.4 MB (109397951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96034b35e960e47dbbb97ea648eee57b6578ec522331024e6620c497a097dd77`  
		Last Modified: Tue, 04 Aug 2026 03:43:36 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78d7dfb3f2bdf82c924507635918d8b32d47bcbe6faadc0022498456087d89c`  
		Last Modified: Tue, 04 Aug 2026 03:43:36 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53592aa1864d07284e5652433791a0fa971503f3b7803452fcf0260288e827ae`  
		Last Modified: Tue, 04 Aug 2026 03:43:36 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:ecbc845d86925e020335bd620c170147fbf6dba9f0f077f073005b87cc02f2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2982796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c02e62695baf102df2e10443aefe77d568816c060d9d37167d9c048693d225`

```dockerfile
```

-	Layers:
	-	`sha256:2e522e984295123e14c9416bac430b8cc0ec1364beec8bc78ec5df395e53eb59`  
		Last Modified: Tue, 04 Aug 2026 03:43:36 GMT  
		Size: 3.0 MB (2965095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2cb63c254feee101fcff051ddcdc62778057388c72e5fb5ed12877956451e3e`  
		Last Modified: Tue, 04 Aug 2026 03:43:36 GMT  
		Size: 17.7 KB (17701 bytes)  
		MIME: application/vnd.in-toto+json
