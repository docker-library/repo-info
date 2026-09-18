## `amazoncorretto:27-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:bb3efc8c9aa571b5b5ae1cd202a94bf59832c4a2fb4b4fea48055aa48d6dc5f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bfc67dfe8c33a6b01e0f5ae4f24422840735546ede9878571359ab4f56946df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187163176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e274d3bc63c6f2becc028e626585b51c6181255e83cdd63cac00e393436d3a82`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:39:53 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:39:53 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:39:53 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:39:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:39:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a38ee464c0fab5c9639747cedf7b8f328f29d04e2c4a6e67b559d73343ea22`  
		Last Modified: Wed, 16 Sep 2026 23:40:13 GMT  
		Size: 183.4 MB (183375581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:05c8368929e8ea62a77e6db69425b0214455e2371fba7d2dfa5ee1b43838439c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.7 KB (587714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a815411ce017330728c3ac963e5fccec176d04067cecd709842019562386d181`

```dockerfile
```

-	Layers:
	-	`sha256:b405c4dcda654ab20f2fe8c5f8043a99cd4690014432f89c7fe5297684a68c72`  
		Last Modified: Wed, 16 Sep 2026 23:40:09 GMT  
		Size: 578.3 KB (578342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bbc3fc5f765b24111a64d1fb1b31f61dd5485add9de4451b5cf15cc66035b93`  
		Last Modified: Wed, 16 Sep 2026 23:40:09 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7958ad31b94b75ce1afd7d4c71a50b6e8ee40f251d09c0db91e2d8eca17dc508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185124883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f2ecf85db1406bda5c188a0ff15644cf5c187070140c20ae9a4a4105263b56`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:41 GMT
ARG version=27.0.0.35.1
# Thu, 17 Sep 2026 21:38:41 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:41 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85dd149f0897eb58a93fc70bc55ef9c1ff0d68ef8310584cc8d46d24952f7452`  
		Last Modified: Thu, 17 Sep 2026 21:39:02 GMT  
		Size: 181.0 MB (181001799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:83defa7b1a47603f94f1e9226a57ff501cbbc5920c8497ba24fec751750b63f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.2 KB (587234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1252b513a9140056a001950f5ec9669a68fd1a8ca4e32982d583fc0c1d850556`

```dockerfile
```

-	Layers:
	-	`sha256:7bc2e059618d527870c0bc9ba89aaafa6132275d7e95c8b1b844234914fea2cc`  
		Last Modified: Thu, 17 Sep 2026 21:38:59 GMT  
		Size: 577.8 KB (577758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bda8d009ef0308b0d23ece3d5bdbfe2c2a0f6bbf546ad8f5b6679c18741704e`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
