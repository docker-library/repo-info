## `amazoncorretto:27-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:daa36faa41ec534a9c8a57e347101271d5bf1d20331d9690c072cfca80eb8315
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:db495d3ef7f72d9c16c620e59cb65db4259bd70f175ec95bd20aefee6664fefe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187167639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3519094d8ded298899e983e62a025dc80efa2ae4f8662ae661c3f6e2034652a6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:36 GMT
ARG version=27.0.0.35.1
# Thu, 17 Sep 2026 21:37:36 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:36 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbb477440263b23bac7404052930adb85fe4a136077a106243237b468e6f98a`  
		Last Modified: Thu, 17 Sep 2026 21:37:57 GMT  
		Size: 183.4 MB (183375564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0a9433889b178ab11407dfe1467e7bb6fbd6bbccc9fb7cb06c1d85afca44f4dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.7 KB (587713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d264af5f668eb62ab2fd59fa11a54406dbe86cd8f6666bbc17a257b4b66271`

```dockerfile
```

-	Layers:
	-	`sha256:32fa0a3b3062155d0caf51ae8fbc587457eb703c9ea94de5480675f8ef93123b`  
		Last Modified: Thu, 17 Sep 2026 21:37:54 GMT  
		Size: 578.3 KB (578342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed72bd5b80d4492838ea5b89d5701b954b7b71a52bbb8d2389551e1ee5a80688`  
		Last Modified: Thu, 17 Sep 2026 21:37:53 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.22` - linux; arm64 variant v8

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

### `amazoncorretto:27-alpine3.22` - unknown; unknown

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
