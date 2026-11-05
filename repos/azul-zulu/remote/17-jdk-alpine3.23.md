## `azul-zulu:17-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:27784ee278863ada66a547522bb1c715be63899e87fdec646f988843522f9c78
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:75efe277d438654f179d1fdfe1eee4f8b420bf4048fdc194303f9b03f58439f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151430421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e93905b621ce8b1efd07f88f042d37aaf0063dbe2371e0159f31aa2c854031d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:25 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:15:25 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:15:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.21.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:15:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 19:15:25 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:15:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2f89fb483972a5b6485b7d2281665630ced8909535a5ad24961cb9adfdfc92`  
		Last Modified: Thu, 05 Nov 2026 19:15:40 GMT  
		Size: 147.6 MB (147577832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ccf1067bd96acf079f91753c692d512f395580fb643615acb92eb0e22eec5e8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e922145fcc15613b34fdd0b295626102d9703ebe2e06cc42118a2d4bee0ecb8b`

```dockerfile
```

-	Layers:
	-	`sha256:e9104cb646406270389bbdfdcbd69b70cb9965c7197885e82ed43c8542c722e3`  
		Last Modified: Thu, 05 Nov 2026 19:15:36 GMT  
		Size: 7.8 KB (7838 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0d225bc656a991291a7a0458277836b9ec75b73db51418969f6167136b228127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150282923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84df716dc6a0b8075ab540c71993a9e8a230ad67c27d4f9fb182a2ede56ba60a`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:24 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:11:24 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.21.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:11:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 19:11:24 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:11:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2dc5360723b564de246758dbb82d6502146850df824fc7b077d0f64f49b2f5`  
		Last Modified: Thu, 05 Nov 2026 19:11:40 GMT  
		Size: 146.1 MB (146092702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f82ada6a8fcdd375973d9bf761707e43bbd8bb92cccd85fde02530d7f863a36d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d95e8071c111bd8c5e406aeea3e8500507bb37cf798f09658c0e991282f3d0d`

```dockerfile
```

-	Layers:
	-	`sha256:fdc8bdde21a7797e32f09b3195e375260cfd3e2dc565a350e8cb922336db24d6`  
		Last Modified: Thu, 05 Nov 2026 19:11:37 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.in-toto+json
