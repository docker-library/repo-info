## `amazoncorretto:8-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:c23bc5962137587ea77127c0f000393cc858378aa3f35acdc197b3c8f117cfb1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:58bd4175f6c0457cb13d6018ae859b1b271d37732f24c84b58bfc9c58152fe22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104463543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:948a0cc3a5873917028e9ec9f176f9a451b8a3a6adfabc3b658e6f09c7e3c047`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:43 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:18:43 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:43 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c918fc0288c95da6425657265933905ca5684da7ce41a1c5a12d2a73e6070ce2`  
		Last Modified: Thu, 20 Aug 2026 17:18:57 GMT  
		Size: 100.8 MB (100816668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6fcdd4e0de0a5a26d781a540448535e7f597e090cb4cfe29fa47d7ef6adff7b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 KB (260288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5553dab0faeed539b7ee5784f6972798340cefaa72334dfd4810e011c4b59ec6`

```dockerfile
```

-	Layers:
	-	`sha256:49196fb721bf3a8420ef7e4bae9148201d2edda26557b5c918e68a1a39ee7a0e`  
		Last Modified: Thu, 20 Aug 2026 17:18:55 GMT  
		Size: 250.9 KB (250933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e19822888ba149a5de92d5e12c70bac407b78e30c37dc79531b5cfe7918475f`  
		Last Modified: Thu, 20 Aug 2026 17:18:55 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21-jdk` - linux; arm64 variant v8

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

### `amazoncorretto:8-alpine3.21-jdk` - unknown; unknown

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
