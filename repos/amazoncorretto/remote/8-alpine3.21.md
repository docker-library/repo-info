## `amazoncorretto:8-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:ab34fefb3807f5640b90c4972717512db02e5a479f50a72fbf14bb4a1c61f8c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a85fe593d803a1c92a5752c95a67f701dc1e111e31d0c364bb4b28bec790e826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104452100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c72a9698fde6ecfef777ea9170c3d4055517ef4587218e9a91bec9bb88b6591`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:35:48 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:35:48 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:35:48 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:35:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:35:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d0d393f178f8792483fa50c5b689f1daa0e1330a902109e3b7a1d9f8adf66c1`  
		Last Modified: Mon, 05 Oct 2026 21:36:02 GMT  
		Size: 100.8 MB (100826080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:63519f8c552472120b647a66507cc358c7bbce243350558e1db5b5d56ca55719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 KB (260288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c114bd14638f6a0314050f8250b4e024e900d94b5adadb50c30333c3f7a4ae6`

```dockerfile
```

-	Layers:
	-	`sha256:6562a43d25479840bfe1705a961a61a570a601251d55e50a38dab83590cb545d`  
		Last Modified: Mon, 05 Oct 2026 21:36:00 GMT  
		Size: 250.9 KB (250933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4af96617ca320ced278ef2b98d78321d283e6f74a1cf7faf51a7aeaec60cb7c`  
		Last Modified: Mon, 05 Oct 2026 21:36:00 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:299cbab9f7c3e1073848d152de232c20d4b4413dd6daa17ec8d237b9c1039c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104636863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e951c6e9117965c50e60d2dca046380bbb223cee711c33bc8a6693b25b9d3928`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:41:22 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:41:22 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:41:22 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:41:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6761a81a6c49da750c391ce775f5f9c6e70f7da84299fb41ed546bffc160a83f`  
		Last Modified: Mon, 05 Oct 2026 21:41:36 GMT  
		Size: 100.7 MB (100662362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:77f4bf785f57743f0d57bfb37cd4ecb116e0b9675386a8d8f5713209171cf295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47249258b0ac36880aa4c996dde773d3cf0a631611d13bc64212aeb35bcdfa58`

```dockerfile
```

-	Layers:
	-	`sha256:53857a5eb89a4058a0ff2a852f738c2e9cfe4ffa244e1e40087dd8f1ceaeffa4`  
		Last Modified: Mon, 05 Oct 2026 21:41:33 GMT  
		Size: 251.1 KB (251065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad951e6ba53992cbac6b6abca2dcedc776920127f7a50eb092fa3bab3ed8562c`  
		Last Modified: Mon, 05 Oct 2026 21:41:33 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
