## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:f3a0afca5d0552908a8139944bb1bf3185699bac183cd4edd5ab2e2e64724e29
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:c4dfdfd52c57466e08700f4dda904b96d14352be7cc8dfbed3c022180483d3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160157971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500e1271ace29bfc211f7631011696fe12e941cdea5bd1521c8158be7a994338`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:48 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:12:48 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 12 Nov 2026 02:16:05 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 12 Nov 2026 02:16:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:05 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65457bd090cf7f303477e49cad5f41046bbc073be992cb04bb52d2c7f0a4ee2`  
		Last Modified: Thu, 05 Nov 2026 19:13:05 GMT  
		Size: 144.0 MB (144027369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a327fb7c9613ebea2052a4c331702347a1986594f04303f54f0ba677df069b`  
		Last Modified: Thu, 12 Nov 2026 02:16:13 GMT  
		Size: 2.2 MB (2216914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569abbd2fecd75bbeea29642b86fcb2a1ef395e8f6e6fec7cb1ebaca1f410818`  
		Last Modified: Thu, 12 Nov 2026 02:16:13 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85efa7f078b230ef4927dd61f720fa7d7f717cfd54fffe4e54f262f2c1ddc8eb`  
		Last Modified: Thu, 12 Nov 2026 02:16:13 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c69c4ff7b5bde3e160eeed1edd322ec45476cabc91b87e8ca828100ee6d015a4`  
		Last Modified: Thu, 12 Nov 2026 02:16:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:dc83a47838fe2f4ba4f35df9ed124198f4a2d74d85d66ef25c524f552ed17053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.2 KB (753156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71267c230f0715bd37ee8ea281fef5eddd991e87eec2ca32c4904312947174e1`

```dockerfile
```

-	Layers:
	-	`sha256:eec1910c1ece423dcd2035bee15075f8ab6ff666e6e33639ca991fee5a61fc85`  
		Last Modified: Thu, 12 Nov 2026 02:16:13 GMT  
		Size: 738.6 KB (738624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:087b121f7519397908a9caef80e01b778b75e6457b1b19b599286b73f1e49204`  
		Last Modified: Thu, 12 Nov 2026 02:16:13 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:6501baf41c4a37fdb31e0934c39348ba7f23b3818497e79b0f34a5462fc95bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158889493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c3ee5b0f5b29224cbca1683a6d6299e8e1df4b5f74383d393604a4c3a62fa7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:34 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:08:34 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:34 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 12 Nov 2026 02:16:09 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 12 Nov 2026 02:16:09 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:09 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:09 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:09 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:09 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:09 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:09 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:09 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ac0f1348e1f4740e56e7fa53460d776d208ed9dd78b50dcd318c1791b4707d`  
		Last Modified: Thu, 05 Nov 2026 19:08:51 GMT  
		Size: 142.4 MB (142382578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a8c987cab308ec3a640475d73172fbba37a4f38cc30ae243a4da691312b262`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 2.3 MB (2256293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f10d970fd35765c9bbbecd148b2f92da0ca08f435cc676b1c8ac16b44b540be`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 10.1 MB (10059021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ecfe82462cdf117a852aa970e77a55cc350e244818b8ccfdc92e774cdb9bb8`  
		Last Modified: Thu, 12 Nov 2026 02:16:16 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c038e1b45aa285ff258d83a4045f48ee51b700aeb9ea9ec0b886056999004e`  
		Last Modified: Thu, 12 Nov 2026 02:16:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:555176983acd42e9b7272cf9160c5e85f5572a8a02e1a9163e0b637cc8aa49ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **752.7 KB (752683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc43118841b417428e51e85327e256e13ce0f44e34e0bc265bf34959a55c9f4a`

```dockerfile
```

-	Layers:
	-	`sha256:6e6476f0986812b544e9f83f662bcb2a645c4a3fd4c9dd6ff011d401ee14a7a0`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 738.0 KB (738018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f73cc255e18670574a46b7fc57a161aeafd6e8b079b7166382cc2cc30b222e13`  
		Last Modified: Thu, 12 Nov 2026 02:16:16 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
