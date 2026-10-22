## `amazoncorretto:21-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:f799e19bb0892a62df2ddeb89645d4d6af363afc50bec2bdb8741e10d7cdc743
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c902268c4f22355265c7db37ed70d1820cd0eaf750789cc2846abbcfdb5d0cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165796255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee93a3cad69f142481230dbad2f2f0a01dce1b9cfe35e1f08b0721b59b271b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:31 GMT
ARG version=21.0.12.12.1
# Wed, 21 Oct 2026 21:15:31 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:31 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4f22ed445d7b8a0ee67f0f85539c356b841610c04715501f5cb40e8b5ae33b`  
		Last Modified: Wed, 21 Oct 2026 21:15:51 GMT  
		Size: 162.2 MB (162170860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:31a804edaa3fd052cae62a66986a59b6658ef34116eae2e0d6307fb90a507549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500f8ed567911bd50f965a55a7ad88e12a14fca220e3e444f896dc47327bccea`

```dockerfile
```

-	Layers:
	-	`sha256:3df543c68d08361c68daf034c4e42fe82d78356165b40fae0cf42d632e277975`  
		Last Modified: Wed, 21 Oct 2026 21:15:46 GMT  
		Size: 587.1 KB (587116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:238e31c8d3e3952f333964debff32317f9c707652683ad7e453f9c5b167d7b0f`  
		Last Modified: Wed, 21 Oct 2026 21:15:46 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ec2ce2d5443a57afcaa34d87b9d23ac67cb05ac4be4607f4cbe1531095667b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164154607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d12ea396b62e3b46e7679de60c3bb440ac180cdf6a673f6094bee761057a2a7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:08 GMT
ARG version=21.0.12.12.1
# Wed, 21 Oct 2026 21:16:08 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:08 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c578c9f24ff64fa766b626bde902db64b68868423ee16eb592effc5561356007`  
		Last Modified: Wed, 21 Oct 2026 21:16:27 GMT  
		Size: 160.2 MB (160180236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3795415ccfb475b410c06c62e708887999c95c382c71559cfed92f51e6090f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.0 KB (596018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c01365d05b7a3029f579cb1539f20fffbd3df5865cdc8783ac55606063015daa`

```dockerfile
```

-	Layers:
	-	`sha256:bec17184d4d2f2c2505013b2c5fe279b24e88cc3e9fb92c737d878cce80ee0f8`  
		Last Modified: Wed, 21 Oct 2026 21:16:23 GMT  
		Size: 586.5 KB (586535 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9f8be73703b7adeb3eaa583986d1d090674ebe64fa01fb71e6ec6584bb47518`  
		Last Modified: Wed, 21 Oct 2026 21:16:23 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
