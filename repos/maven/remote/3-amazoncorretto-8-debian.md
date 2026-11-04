## `maven:3-amazoncorretto-8-debian`

```console
$ docker pull maven@sha256:517618a6a7a405dca559d95abefa77e8b858b1700dd092b7fa7234ee632730da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian` - linux; amd64

```console
$ docker pull maven@sha256:2c212df893e44a4e0c31f3c4dc7a025474a194b3c169151ac8596b30670cf312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.5 MB (149533378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d89cc87552eb10cb19bc328bdb6a0170455e6001d420022a93b0250a69dc5e6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 23:10:46 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:10:46 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 23:10:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Tue, 03 Nov 2026 23:10:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:10:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:10:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:10:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:10:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:10:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:10:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:10:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:10:46 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:10:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:10:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:10:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a9ba3b8a9111aadddc6b10b100ed315fa85f7276f0275b18a8687e75470492`  
		Last Modified: Tue, 03 Nov 2026 23:11:02 GMT  
		Size: 109.6 MB (109618124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb36e4dda8fe9bd93aedb39094f7695e50c135fdecef0c2bbe2f0a446c0a7938`  
		Last Modified: Tue, 03 Nov 2026 23:10:59 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f8f774ce99381ed4cea87233a8b89c4814710f4d1c01034c46c1b24a61c61`  
		Last Modified: Tue, 03 Nov 2026 23:10:59 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3eb662ee1c94732587bc38233a1d3bc0b460d5507729d0a454e6f17292a692f`  
		Last Modified: Tue, 03 Nov 2026 23:10:59 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:be1ce78018f152f162fc0382ca89372b7f9987a9d230e679275e4df147f55ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2991947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6723be979f7def03ae1e1efea8bb6061bd3f3d18d08aa5d555e334e253464f14`

```dockerfile
```

-	Layers:
	-	`sha256:3dfeea42d1ca201ab99ee400494f3a01f81e9c57f36e13ff159871fabdac857c`  
		Last Modified: Tue, 03 Nov 2026 23:10:59 GMT  
		Size: 3.0 MB (2974406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5087fa2f970d36278b167f48181504dda4904cd15bee6319d3ef991bbd5573e1`  
		Last Modified: Tue, 03 Nov 2026 23:10:59 GMT  
		Size: 17.5 KB (17541 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0fe5e16647fb24b9448dbadca5625ae45893023b61e33d692898e474516d3bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.7 MB (149692406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b784db1b37eea8853c4a4c753ba6c01222c717624c8d3b4ff1b90558f38add`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 23:16:49 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:16:50 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 23:16:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Tue, 03 Nov 2026 23:16:50 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:16:50 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:16:50 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:16:50 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:16:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:16:50 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:16:50 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:16:50 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:16:50 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:16:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:16:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:16:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b71e92b1696ced6a64fa9c73be56d5e52f77e8ec78956d9ea7e067577e76a93`  
		Last Modified: Tue, 03 Nov 2026 23:17:07 GMT  
		Size: 109.4 MB (109418939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbb9b32cc484dbc61e7387beac1187290155d9f2e43716e065cc2416aade937`  
		Last Modified: Tue, 03 Nov 2026 23:17:04 GMT  
		Size: 10.1 MB (10058964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48912133fc248b5b40877fe4e49c468a1faf0c1547cfdcbd8e0c8c36b6d2574`  
		Last Modified: Tue, 03 Nov 2026 23:17:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd7a20db0efd3811ea4e9c2c16316872fe3881d12f08f2ab43f159bb9f69064`  
		Last Modified: Tue, 03 Nov 2026 23:17:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:5a52623e4d8f029aea7c0df5baea07371cfc81f315e6e2c6e1cc065f1cee2a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3408665ed406a975913c74c9308218993ea7943fb2cd9c665506815f75769129`

```dockerfile
```

-	Layers:
	-	`sha256:550e394ef9d32ccecf95be96a6e13db249766e55cc03b136ea49f8fc5de58a58`  
		Last Modified: Tue, 03 Nov 2026 23:17:04 GMT  
		Size: 3.0 MB (2974778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcf86d3f7cd49008883076d38e82c89751c0307e71192e8152d65d0aa349d2bf`  
		Last Modified: Tue, 03 Nov 2026 23:17:03 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json
