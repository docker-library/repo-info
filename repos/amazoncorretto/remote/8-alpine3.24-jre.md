## `amazoncorretto:8-alpine3.24-jre`

```console
$ docker pull amazoncorretto@sha256:7076a82fa3a92486201cc4efd127408bbbe9f586baf180b1419a57cfa587bc20
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.24-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:07f02ee3177608d0eeeb6cb72af849b3789bf482b8802d37afc0cf92f0fe993a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45667506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caede5c69ca4064cfdd59f68483bf19367c64aa2a0912a47cf5bf9148b504542`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:36:13 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:36:13 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:36:13 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:36:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e8b363970e5db3df3309cef7aa5a9f84db55a8fec8fb7249d450acdcca2e80`  
		Last Modified: Mon, 05 Oct 2026 21:36:24 GMT  
		Size: 41.8 MB (41817768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c490314f934067ddee105014d4769db137ed48a7057afaa05dcbd0893f89e625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dbb115703a33245e133aefeecff756767b0405992205d2b8b1ef9a65955c42b`

```dockerfile
```

-	Layers:
	-	`sha256:454a09a388f18d0e9792a0e5acda74558ef1407af7f175693418773fb3be5757`  
		Last Modified: Mon, 05 Oct 2026 21:36:23 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32e42033f4620f4c6c32c5a31e564b7ebf4fb5aace2e7310ed4036443639eb4c`  
		Last Modified: Mon, 05 Oct 2026 21:36:23 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.24-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:39e7e73d20f9460a06b47270119a22e04fc8f3b48663c89839c3f3e29eae6047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45763106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3d7dca9a7d5ed4b565ded0e3ea3b7c2b54a96c9d0a3929d16c3d59b882acb4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:50:52 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:50:52 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:50:52 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e37ffdb46b3cf1feddc36050a64d38568db7da35e9f44e7e70944e88b82911`  
		Last Modified: Mon, 05 Oct 2026 21:51:02 GMT  
		Size: 41.6 MB (41575447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c401f1fa8935dabb288b7851af9bb1a7d51ded702a4099a3557cd9abe4243014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6cfd265135d5a460fd1b335b0587308b5c5efbb87c9a854cc864fbd4f08f1c`

```dockerfile
```

-	Layers:
	-	`sha256:28666790e4c7b50af8aed3cde44dacf675662d9b15059daf7feb2b87484bdeb2`  
		Last Modified: Mon, 05 Oct 2026 21:51:01 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1824923bf9d9068c70ff5896dcc2bd30fd8d2aface6fb35547aa2c3de267f7bf`  
		Last Modified: Mon, 05 Oct 2026 21:51:01 GMT  
		Size: 9.4 KB (9420 bytes)  
		MIME: application/vnd.in-toto+json
