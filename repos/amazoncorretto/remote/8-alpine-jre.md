## `amazoncorretto:8-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:30fcdd17134e4d5b5b7182ecc367f1880ff7a0557314388b889fcd8d8a107b04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:61c9bde2a409c212177fbad1412f1b7781887119a8c1d39cfb1019e3f6e45e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45690761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e73d25d2664dcedaba1736f5d6fd312f5c0b4c521d5a63feda0dc30bc3e8cbd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:15 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:15 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:15 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d555107a066c729eb763a9135b4aea426a44e1f94ff5d2a1ba39035c483d2c37`  
		Last Modified: Fri, 23 Oct 2026 18:07:26 GMT  
		Size: 41.8 MB (41837652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2bd88375035f9ed637c805d90beaa1e01bca9296900b136c161e4efdc7c80c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f453630c076f1e67ec221cd1b5def05710c9048594c32309e2f8f675ee290974`

```dockerfile
```

-	Layers:
	-	`sha256:106eeeb46bc38b8cf7a4cec645c99ad237124d721e59203219bd09cecf91d044`  
		Last Modified: Fri, 23 Oct 2026 18:07:25 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db968c7eff9eb39acd57a574e7e8083d20fde273b430cbac0351a2458227e96`  
		Last Modified: Fri, 23 Oct 2026 18:07:24 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:482c3d28e0944a389fccc3c365a5bf75ea7ff10f32a714b26f1e86f847459baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45777929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d49a40e4d9763c0e512703a75be03924b88c613a84587a52fefdb10a936466c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:09 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:09 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:09 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de69ecbb5468396b213ad70ec21e22fc06221f9308cb592c0b3ccace3ea0c79`  
		Last Modified: Fri, 23 Oct 2026 18:07:19 GMT  
		Size: 41.6 MB (41587441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:41433d1a91eb338ea3c67b85317a66550435b546ad4c1e2c76babac2c6dac7f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460c76e4e2b45d5f26f85c8fc01616c0300cc095f8093eb178319f86d4d5af89`

```dockerfile
```

-	Layers:
	-	`sha256:9d8984122fefaa0a4a3f7a8cd915f1f2b65c3a2632d8393588d1de2684537966`  
		Last Modified: Fri, 23 Oct 2026 18:07:18 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5681ff4287e1aac5c10b857fa1f3252231d3ca0cdffaf7080a6e22bfec92b5a5`  
		Last Modified: Fri, 23 Oct 2026 18:07:18 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json
