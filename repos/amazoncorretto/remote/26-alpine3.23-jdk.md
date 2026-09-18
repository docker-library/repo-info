## `amazoncorretto:26-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:efd4d3c692432cbd09b701db3400512b6afda53943674c5b445270ce6f74f093
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dfc05efd8ba26331d7eb00fb638886e0dd044b3f5c7e2955736278639d210c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189343500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd77003aaf0564fc3a1de155034471aba037362895e75522ea7b0369d528d45`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:10 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:37:10 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:10 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8624635e26bf19bf9abf9b745cf06ceb372d50c6baf367fc0c40ce28374a62`  
		Last Modified: Thu, 17 Sep 2026 21:37:30 GMT  
		Size: 185.5 MB (185494993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:df6aba5d207bfb214de31119c88699098bc21ad6def60c0f6f8813980cf8bb29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.7 KB (595691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98afa09a533de45d642679cf51573b86274f8932676655764840e1a6e0c39226`

```dockerfile
```

-	Layers:
	-	`sha256:d4f8a36f76d2230c43804ed7fcf69b4197fc779f383130b9277a5e0170d3cb73`  
		Last Modified: Thu, 17 Sep 2026 21:37:26 GMT  
		Size: 586.3 KB (586319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cad8aa38fa1e8c20935a1bd954cf6f1ccaec03bf7bbca8e673b285e462acc83c`  
		Last Modified: Thu, 17 Sep 2026 21:37:26 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ded8c21e4d26269e842f6de5dd949435c42444b4743c2fcae1183c1f7710be09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187218398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed541d51e1a0f4c7645330cc3b7b279260adffdace79dbdf03ca37837f0195c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:07 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:38:07 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14eae295385a135e92bff9df3592ed018b0d94bc60643cf06a9976d5b1662dfb`  
		Last Modified: Thu, 17 Sep 2026 21:38:28 GMT  
		Size: 183.0 MB (183032342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e4c8e93ef52b0a00d7d0079646b68e03f87f48085db2d2cad0653f14a0dbd066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55a1027b23ffa2975b110e7faed8a2fef3970b6905ebb52ace76a85a77d800b`

```dockerfile
```

-	Layers:
	-	`sha256:3edd9727acbf450209e03eb8c3c885086d0bf6d39f103da658cd6ac5f4ea20e0`  
		Last Modified: Thu, 17 Sep 2026 21:38:25 GMT  
		Size: 585.1 KB (585085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87daf7dd0c7ea2b09e9f11275265caeb399ad1a8503d579cdac8c301a526bbe5`  
		Last Modified: Thu, 17 Sep 2026 21:38:24 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
