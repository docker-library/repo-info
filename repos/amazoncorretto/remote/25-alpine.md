## `amazoncorretto:25-alpine`

```console
$ docker pull amazoncorretto@sha256:b79cd12dceb279962a585059498694fd66965df39244bbab2879aad39dd6278d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:215324e4151419d12fb2e7854bf38cc591a41ccaed2b08cb8c0afb0fd5726a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185370570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7dd054100191dbe7b9d5837d9004c7d507c1e5c959929c6384c6e07d34c1ae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:34 GMT
ARG version=25.0.4.10.1
# Wed, 21 Oct 2026 22:56:34 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:34 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:56:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c47cb6fe2629cd160c4a85188a50c75155084a0ad8e64e7400a16316c29ce8`  
		Last Modified: Wed, 21 Oct 2026 22:56:55 GMT  
		Size: 181.5 MB (181517461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3c2464f059b8725a1bfb77c28573feb48e7cbe1042da88c5dacda4b3b0b2408b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **603.6 KB (603560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d6555e720413bd12a63b59755da32d8f8d62f45c296c504ec05f94b080abdc`

```dockerfile
```

-	Layers:
	-	`sha256:9180ef9a827a570edca762e0be6b6edc581a5eec009e1c263b784ab3b6f6c7b2`  
		Last Modified: Wed, 21 Oct 2026 22:56:52 GMT  
		Size: 592.9 KB (592883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fd8fe9493764f23a9fbbb870de9b86c4d17236214a7e57a669f8c7ca2cd5fed`  
		Last Modified: Wed, 21 Oct 2026 22:56:52 GMT  
		Size: 10.7 KB (10677 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9fff44ffc118a29d5098b9f9c6ab96ed07da4a8ab2687d5a823c93fdf434225f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183305939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3cbc475a2b0c2c2831ba80f2c267e87b2ca1659265c3ead6b5c8b53665eba3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:19:53 GMT
ARG version=25.0.4.10.1
# Wed, 21 Oct 2026 23:19:53 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 23:19:53 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:19:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 23:19:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f2d3cf60758902e167a7d588339317f531d419804173594b444ef2fdf87126`  
		Last Modified: Wed, 21 Oct 2026 23:20:16 GMT  
		Size: 179.1 MB (179115451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:864a429f859d99c9fab4bdbb93af199c25bf7410f4bc0dcbf9780ddd5b187a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.5 KB (602527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06225a28704cb8a4a268f05de68cc911c7dff08e91be363559e9b5f261dd1a93`

```dockerfile
```

-	Layers:
	-	`sha256:f72cb347ad0c8082f05b73dc8df45cf8e284756e2b3c77f28a63c0a1fbbea893`  
		Last Modified: Wed, 21 Oct 2026 23:20:11 GMT  
		Size: 591.7 KB (591697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5696ca745c3176cfab82e73e78dd33acaa77354a12d4361a6dc0847929f5cc7b`  
		Last Modified: Wed, 21 Oct 2026 23:20:11 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
