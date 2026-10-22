## `amazoncorretto:27-alpine`

```console
$ docker pull amazoncorretto@sha256:be4c1d0fd29cfa5db577c9fd5196b9812d4517e04e1ade48e41629177931e7a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fd931ad4d4579461f8896a28c99e7700c5cb528e15c257fa71b74bc7f0fc1c91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187250958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1db01b1b9ee784d591e1e86a29b2f52e18d0c4861417b782705bf10d734b921`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:48 GMT
ARG version=27.0.0.35.1
# Wed, 21 Oct 2026 22:56:48 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:48 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:56:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1b7bda78a6b8d86ad42905706f2b55c2cd25b0f04af2feb8a14b31362d73a0`  
		Last Modified: Wed, 21 Oct 2026 22:57:12 GMT  
		Size: 183.4 MB (183397849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:77269be26586a04939b33c69da56cd3bda9e96b47c08e61657650bacf16bb853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **589.1 KB (589113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b218a0e939f45bd120360696739fff2df057d5835ebaff271ac22ad824f5791e`

```dockerfile
```

-	Layers:
	-	`sha256:24b059afd9c68616a951b823cb08a66b0ff6bf8f4465754ef3c3521f1980e9b7`  
		Last Modified: Wed, 21 Oct 2026 22:57:05 GMT  
		Size: 578.4 KB (578435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb954274a3d19cfb514852de0287c3c2a294a5fcdefa2f1c8e7bcb1aeb7113ed`  
		Last Modified: Wed, 21 Oct 2026 22:57:05 GMT  
		Size: 10.7 KB (10678 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8533706e64cedee0f0ceac47f6f210fe7d0f505291e9630c44a4d93b835a39db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185208711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9b811038cf1d3be15ca744caafe2e9ba7e4975b6987316de3d6f31294bb53c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:19:59 GMT
ARG version=27.0.0.35.1
# Wed, 21 Oct 2026 23:19:59 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 23:19:59 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:19:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 23:19:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5fb49992ab843909b093dc1f695a5163cee172cc46c0dfb68a0c0b5d7fdf3d8`  
		Last Modified: Wed, 21 Oct 2026 23:20:21 GMT  
		Size: 181.0 MB (181018223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1b78e781cd7eeb1e654f9db42a7e844f9dbaf6adae706cdb43c8bfe03524b9a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.1 KB (588079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417f94570a57fcfaa15846fea945636c209b54006582563804fa96ebc6ffab9b`

```dockerfile
```

-	Layers:
	-	`sha256:1666bfdcd531025e1069969eab49c05ce88038a3940413677ee04a0369b7280d`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 577.2 KB (577249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:068d1d40a9abebe65a77eab1247e8b2dfa01adb525777c14c491f93a1274e157`  
		Last Modified: Wed, 21 Oct 2026 23:20:16 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
