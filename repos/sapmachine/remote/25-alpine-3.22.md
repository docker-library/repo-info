## `sapmachine:25-alpine-3.22`

```console
$ docker pull sapmachine@sha256:ec4f927caf7cfd1e43ae20aa7d2a4ff70886afcacd756dc2f1d05d973324f453
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:428920902b26dd9ee816457bcf2331dd977940783d024eb50dda599d9658a54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228762998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c0abc35be3a4c806dd63ce91f18e15534a3b38a33eaa0aad0b3ce8c7e8b5fe`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:56:16 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:56:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Fri, 23 Oct 2026 16:56:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461f99736ad2c853825c6456cd3baeeb8ee2c51dcf37f339ed61479651136074`  
		Last Modified: Fri, 23 Oct 2026 16:56:38 GMT  
		Size: 225.0 MB (224968641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:86907ff20aba9869cdb84f42b1af16158a1849aa2edd18b21f4e406a876aee5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.3 KB (510251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87c1b8f85d0706f847759dcdac3011b6f54ddecdc840050ff08296204f5f19d`

```dockerfile
```

-	Layers:
	-	`sha256:ab61a8a53b452417a978c03cfd8157a67e86c7a7caa06919f445bd1f043db1b1`  
		Last Modified: Fri, 23 Oct 2026 16:56:34 GMT  
		Size: 502.0 KB (501953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6705e91520f0c0421cc876401c6dbe8404715efb6694d1e75fa39ce6ea2bc198`  
		Last Modified: Fri, 23 Oct 2026 16:56:33 GMT  
		Size: 8.3 KB (8298 bytes)  
		MIME: application/vnd.in-toto+json
