## `amazoncorretto:17-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:663a51661bc3ebd62d2e32e3977f1a4ca2eaf7a636ab51369314ba00780a883d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6bf4f52128776b8c7271328827c7eb59594ad4c99e529a1792811d94d100a82f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152727116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da83c36eea029ad236b055a066357597e0a8ebd959b8f623364705f2254c4d0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:02 GMT
ARG version=17.0.20.8.1
# Thu, 23 Jul 2026 23:12:02 GMT
# ARGS: version=17.0.20.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:02 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4157c3ba9babae625b59932abf7cb8144d895f75cf169da9c09e78de50667353`  
		Last Modified: Thu, 23 Jul 2026 23:12:19 GMT  
		Size: 148.9 MB (148939521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cff35b38969d64e7da968b6e1e17773f0346e84c4e9da7e095359298b9bded9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.2 KB (593159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a33fd1272f2745b3b42e46aaf7903bd75583dbef33978b8adfb8ca3cb50f60`

```dockerfile
```

-	Layers:
	-	`sha256:8cdeffd6e37f7ac075b8a797832cd38c28984caebdd856e73c0349a55c1968e9`  
		Last Modified: Thu, 23 Jul 2026 23:12:16 GMT  
		Size: 583.8 KB (583785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce682534269fc26fcf7e76206f19ad107750c21bc8d8266ea823d7900eb5cf72`  
		Last Modified: Thu, 23 Jul 2026 23:12:16 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:107a61203d7a339d07ae20a70c00ca0af671f4b4cd0882d786529827e7f322c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151477643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f87cdd28d901a77acedc53cc7e4271486be6539a777e9008486adcccbadaa1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:42 GMT
ARG version=17.0.20.8.1
# Thu, 23 Jul 2026 23:13:42 GMT
# ARGS: version=17.0.20.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:42 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63808e4ae01747c330ffbad9a351f74d48318ad230c226b50d8426beb838025e`  
		Last Modified: Thu, 23 Jul 2026 23:14:00 GMT  
		Size: 147.4 MB (147357157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1883df79a3dc7bcce54a8bb08e345b52838a3a53f960b857435b1c65943a63b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.7 KB (592682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7504c8fff4a17d27375b4d7582933b3b82e6f9918b49985455b139cce8d8b9a`

```dockerfile
```

-	Layers:
	-	`sha256:96b62bb65645c5cbe960cdea3491fefbd6fad7776106a0e367f761e546230b91`  
		Last Modified: Thu, 23 Jul 2026 23:13:57 GMT  
		Size: 583.2 KB (583204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f124634a3b665a15666b71ca4c4c1b2f1a8c162b807009b3ced90629986dc3c`  
		Last Modified: Thu, 23 Jul 2026 23:13:57 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
