## `maven:3-amazoncorretto-8-debian`

```console
$ docker pull maven@sha256:05a42384127af02f7e212a072fd422773e526a0d340c616ded3aa32321152a6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian` - linux; amd64

```console
$ docker pull maven@sha256:572a5d133d6bff1ba1ccd2a312d9583d2d31b37c616596984c0efb55707b9dd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.5 MB (149502989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7133bc45a7053a836ee8b6c8f03db766be2facae8b4ac726fc9bb5519fc352`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:15:35 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:15:35 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:15:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Tue, 06 Oct 2026 02:15:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 06 Oct 2026 02:15:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 06 Oct 2026 02:15:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 06 Oct 2026 02:15:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 06 Oct 2026 02:15:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 06 Oct 2026 02:15:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 06 Oct 2026 02:15:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:15:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 06 Oct 2026 02:15:35 GMT
ARG USER_HOME_DIR=/root
# Tue, 06 Oct 2026 02:15:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 06 Oct 2026 02:15:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b444a75cad089db14d59335efd9267e5f53d36af5bb7903ffb07f6bff5898c4b`  
		Last Modified: Tue, 06 Oct 2026 02:15:51 GMT  
		Size: 109.6 MB (109599644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6331d8e0bf81c1155da63145a68c8f03fa1eb97be1d3a91cebc42cced22ea4`  
		Last Modified: Tue, 06 Oct 2026 02:15:48 GMT  
		Size: 10.1 MB (10058994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9773da3e43772cbaac3c005d200cdc7dda1c7005732e8d9a67961b6ec00f7f13`  
		Last Modified: Tue, 06 Oct 2026 02:15:48 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4733d5c489cd8840642ef8c7573e04a5647c0d354c4f059f393d503b66c2220`  
		Last Modified: Tue, 06 Oct 2026 02:15:48 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:ac971fba29845f39cfdb500369fd39525db3441b023accb5aac13af4f94bdf87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ffb871550becdbc646690de3bac34adfde2865ee03e72bf4ce8e41a2320e263`

```dockerfile
```

-	Layers:
	-	`sha256:1f778da4950ccadf3dd8332bade56dfecf601f6583c09cde612cf1fc01342534`  
		Last Modified: Tue, 06 Oct 2026 02:15:48 GMT  
		Size: 3.0 MB (2975683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83770591ad846510b488e0e4cf6ce9e6aa359f7fd19137205afb02abbf37daf9`  
		Last Modified: Tue, 06 Oct 2026 02:15:48 GMT  
		Size: 17.5 KB (17540 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:34efdda327360ce34d67a409d653fc6261d0998f00913b2a328de9a7ab21289b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149644512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:628a6bac1c4b7f2c533e8b82f15783ea0a6b8880acb405bbc26342ad25cca401`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:21:21 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:21:21 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:21:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Tue, 06 Oct 2026 02:21:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 06 Oct 2026 02:21:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 06 Oct 2026 02:21:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 06 Oct 2026 02:21:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 06 Oct 2026 02:21:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 06 Oct 2026 02:21:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 06 Oct 2026 02:21:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:21:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 06 Oct 2026 02:21:21 GMT
ARG USER_HOME_DIR=/root
# Tue, 06 Oct 2026 02:21:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 06 Oct 2026 02:21:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 06 Oct 2026 02:21:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de15b98719ffb6bbb4bc2bcade3b58ffe46e1de6b2b86ac9229be738114e439`  
		Last Modified: Tue, 06 Oct 2026 02:21:37 GMT  
		Size: 109.4 MB (109384257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a47e1e31e89a08a8dcaddd06346bb8eab8d08aad21355b7f0c7c82eb1f07498`  
		Last Modified: Tue, 06 Oct 2026 02:21:35 GMT  
		Size: 10.1 MB (10058970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7bb73cc86904a7be933461c9e371fdbc13df9440179b8d0607bcfb1f26ec78`  
		Last Modified: Tue, 06 Oct 2026 02:21:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d77312d4c585f5167ba4a088d394a6801bfd6da029d6e0ce9d5448259262a3`  
		Last Modified: Tue, 06 Oct 2026 02:21:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian` - unknown; unknown

```console
$ docker pull maven@sha256:2908d33859e6f7961cb0189e635415e3cbbdf92fccd5dc3f500eb6f6559db9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca3d90f72263689b4c8811f210adc4e5dee3525f1ea7487e1a8006cfca6116b`

```dockerfile
```

-	Layers:
	-	`sha256:af0b605c60b623f59b12504c79d61aa23d1cea86169438167298013d4ebcee8d`  
		Last Modified: Tue, 06 Oct 2026 02:21:35 GMT  
		Size: 3.0 MB (2976055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31943ec7e6316896c32026e750f88ba10c353098b8ad9204ef5ef4f3ce7dd4be`  
		Last Modified: Tue, 06 Oct 2026 02:21:35 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json
