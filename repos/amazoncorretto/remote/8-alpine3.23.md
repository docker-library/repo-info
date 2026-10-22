## `amazoncorretto:8-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:78598fad8de6b46ec243e37b07bf295b4280d77e7ce2dbf5c040b5c00752df95
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bd6d9afd5eacbde087a8123e5d3cdb9afd54a886a6a78c4bea9707f574010ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104679266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59cedd7935108a5076fafde128c3fe1e6030c125a53f8d465d79702ba0a65409`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:38 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 21:14:38 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:14:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:14:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:14:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfd9dee668d27e815e13aaffad4585c7f0deb3262a6088a7f357f87cb4ae6b4`  
		Last Modified: Wed, 21 Oct 2026 21:14:51 GMT  
		Size: 100.8 MB (100827039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:25c7f4653176b78403bc3753c1771288080b04e1bc9e8e5769c1e507bc6c35a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 KB (255750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc92f87309984c988057fceaa9102320efb13acf91a166ee7de7b844732c3303`

```dockerfile
```

-	Layers:
	-	`sha256:e3e88b311380f31567e8b175100b129711a2c644a1038ad69a4dbc0221ef254f`  
		Last Modified: Wed, 21 Oct 2026 21:14:48 GMT  
		Size: 246.4 KB (246395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a020649a62a66b4c6a3f1f82c1f78a46eb18f0f25afc18396fec362c502fc44`  
		Last Modified: Wed, 21 Oct 2026 21:14:48 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:81923f7d471ea51c3a9e7304861ac63a837de968c8f5b6c0adfbe230cc444e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104852297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5496cef966308b262f9d1d44cdcc652004f38eb6ecc9abb9531e6ee25b7426b8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:15 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 21:15:15 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:15 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a911483ad3082ae0bbb0bf29f235a2d309e81b932423a3c777a5fdfc9b44c1d8`  
		Last Modified: Wed, 21 Oct 2026 21:15:30 GMT  
		Size: 100.7 MB (100662803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a44c4deb0a1f51e4a848eb89df58137f55fba5e549c5c70ddf6e4701f97a4954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b18c8a5f10abb6bd4e48fb9d9a03d6d086b3dd6d27f38831436ee419287a8e`

```dockerfile
```

-	Layers:
	-	`sha256:4941386817fff5391d502b6c118449c38aae8cc388103ed99077f05457bb2fc0`  
		Last Modified: Wed, 21 Oct 2026 21:15:27 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c09bb06b347f6b1a77edd18f48796a8d5bccd976021de9deaff5605750d712ef`  
		Last Modified: Wed, 21 Oct 2026 21:15:27 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
