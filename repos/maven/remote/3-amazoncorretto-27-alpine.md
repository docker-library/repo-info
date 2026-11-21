## `maven:3-amazoncorretto-27-alpine`

```console
$ docker pull maven@sha256:5fc0a3e2c11013f9e49775508053b0c04fe187b8b37d7e8bbe6ef8610d8125ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-27-alpine` - linux; amd64

```console
$ docker pull maven@sha256:9ba03aa37ca8951a5cd0225ee2807abf84c18ea0a7a5ea0b1b377fa7e5e33454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199582916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee559459da2897fb35b7273d8f0b49f4133d04a0a2cf9c6ef5255cff4515a870`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:35:32 GMT
ARG version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:32 GMT
# ARGS: version=27.0.1.1.4
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:35:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:35:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 19:09:14 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 19:09:14 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 19:09:14 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:09:14 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 19:09:14 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 19:09:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 19:09:14 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 19:09:14 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 19:09:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 19:09:15 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 19:09:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 19:09:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 19:09:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c196f8248b1bcf45ed9f94ac04ead94b6524fe7ed222a3b0b7e0a57cfa2345f6`  
		Last Modified: Tue, 17 Nov 2026 21:35:52 GMT  
		Size: 183.5 MB (183452194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce6f43cee07d6903a2927f85ec4ee87603071a06e662efca0802c9ebc33ad2a`  
		Last Modified: Fri, 20 Nov 2026 19:09:23 GMT  
		Size: 2.2 MB (2217036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0531ac4dcf3b445b5f918f68bb3f2cb38ceb22655b2536c348e0695e1bf1c2`  
		Last Modified: Fri, 20 Nov 2026 19:09:23 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e88ff0c9eb3a85ea6fd77e357cbe7ace9175c7b470088b3a5b06b5fa94f068`  
		Last Modified: Fri, 20 Nov 2026 19:09:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310563382aeb283532ef9dda09898a0ad838a6e8bdf7d73458674b4e8faddfb3`  
		Last Modified: Fri, 20 Nov 2026 19:09:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:96a8d1b2728ba653cae187f74c9a4b8727db8a0f7e846a2162f9bac8db96d9dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **742.6 KB (742575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c9a8f119c4b894a136ff062508d59ae5fe606eddb1fc1d4226bee875511708`

```dockerfile
```

-	Layers:
	-	`sha256:bc349ca25500473459a5deead18f988845c3232da3f8740fcae9a06d27af7650`  
		Last Modified: Fri, 20 Nov 2026 19:09:23 GMT  
		Size: 728.0 KB (728043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a681de277f8b18f44254b0215877623721b75673bd038a25497a7b3200ab336`  
		Last Modified: Fri, 20 Nov 2026 19:09:22 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-27-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0d755e1411ee87f92b35c81ba96babf6a51a4fe48dc37f4bb4919caf7825f7c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197597223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ccce95d0cc8ffd1a0a3abe4ce4ebdfd8c1a34d551effadf18ee048a8e0d78ff`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:35:35 GMT
ARG version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:35 GMT
# ARGS: version=27.0.1.1.4
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:35:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:35:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 20 Nov 2026 06:14:29 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Fri, 20 Nov 2026 06:14:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:14:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:14:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:14:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:14:29 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:14:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:14:29 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:14:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:14:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:14:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01843f82117616cde1f2d288182cb74f549946c6c545c8e460bd73f901351cc`  
		Last Modified: Tue, 17 Nov 2026 21:35:57 GMT  
		Size: 181.1 MB (181090334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766794fd1962af484faa0ed2bff94517a35bb56464504d38780df7a673278f1c`  
		Last Modified: Fri, 20 Nov 2026 06:14:37 GMT  
		Size: 2.3 MB (2256278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb1266188ca1288c7d175c453df3b109c3fb77d4857527dc2346fb8ba8b6b7d`  
		Last Modified: Fri, 20 Nov 2026 06:14:37 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b07704eb233f07bc0a79b728cd128ef6123effdffbf2553a666a4a61377072`  
		Last Modified: Fri, 20 Nov 2026 06:14:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d570792a1a4974a7737ba231b8b61c6b15c6a1dcb9de578ac05dbc0b848a451c`  
		Last Modified: Fri, 20 Nov 2026 06:14:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:39cb73a0531d0f81375766b9d60bfcd0ad33aeae3e32b246def449c01f3a82fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.5 KB (741461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c6a3f71f0d92663172c883401ca786f66bc836e8325d34d9462e84a4c7eae9`

```dockerfile
```

-	Layers:
	-	`sha256:d5e60146a60b19697b3dd7447e2dc80334dbe452b2f6014c4bdd3b14c6af6df7`  
		Last Modified: Fri, 20 Nov 2026 06:14:36 GMT  
		Size: 726.8 KB (726797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e031b3e4b921639f73124cae756c4509f159a455b6810c64af01cc9f53fe469d`  
		Last Modified: Fri, 20 Nov 2026 06:14:36 GMT  
		Size: 14.7 KB (14664 bytes)  
		MIME: application/vnd.in-toto+json
