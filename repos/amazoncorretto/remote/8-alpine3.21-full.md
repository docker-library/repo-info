## `amazoncorretto:8-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:6828b2a0f62aa5215027dc01b611cec5c7635d93a0fe095b37736a5f63e0e3b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:64651c9c26d241100831a6fba8ef6c2720f8edc8fb6e28089aeb92f727eb440b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104442658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40da3c844fb29e0021cac52874deee0a2d354891ff2371fca20e0654e12c2a2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:30 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:33:30 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:33:30 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:33:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:33:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d549c712d717e2449de44ab42da8c64cc068e73658a8478fa5be20b23ca2a92`  
		Last Modified: Thu, 17 Sep 2026 21:33:44 GMT  
		Size: 100.8 MB (100816638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:74b14c8362484abe8599d7e16cc5d73c963da4c0b05ddf1fa880089fb64f1194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 KB (260287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:541abb6b7912c0ab28c472c041400d0663e0f22f941b4b5c304b9be8cfaea69f`

```dockerfile
```

-	Layers:
	-	`sha256:3a39e470a65ec682ea68c4ca1c1b56eeb564129a1566e586ce821ed60c9edc88`  
		Last Modified: Thu, 17 Sep 2026 21:33:41 GMT  
		Size: 250.9 KB (250933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:777c463c939b46fb09e5403c2a07bb965ff05e80b90a6b7d3779d39809e4e81b`  
		Last Modified: Thu, 17 Sep 2026 21:33:41 GMT  
		Size: 9.4 KB (9354 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a7c92a7ee4a4e0f5b58fc842cda9888962b4bc0b9fda8ac832ff2f161dbb67a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104625085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a30fa65423ebde8610b7ac68f02f99c69ffa6067a5d9f8a5c337353985bce0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:08 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:08 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:08 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8cae2e16fc2f5857a15252dace23e211d1a60f32ae67d0c6d5bfa272dd068d9`  
		Last Modified: Thu, 17 Sep 2026 21:35:22 GMT  
		Size: 100.7 MB (100650584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:55d02b5b9791567a36847f3f0d4dfc8ddc26c4454e484b36a96291c78e4c0ebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470626543e75b73ab2a06068fb2adb6fe966a1507444b431edf378dba9107536`

```dockerfile
```

-	Layers:
	-	`sha256:83ce7e3ad98718e96bf40d6808e3bb9636e50027bc2f6e508671d0c24e82a4b8`  
		Last Modified: Thu, 17 Sep 2026 21:35:20 GMT  
		Size: 251.1 KB (251065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eef1899eefe66a76bf1424d5b05a3bcc87e10691b513390468d3a100760053c`  
		Last Modified: Thu, 17 Sep 2026 21:35:20 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
