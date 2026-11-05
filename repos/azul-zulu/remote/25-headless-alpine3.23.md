## `azul-zulu:25-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:50acc6a8b2ad7004fba9f3d05d14c78ba09e31cf188701dfc509215bb555ae31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1bfcc7b409fe33b69df3a199f6fee6973cd5f263d43c1e8c75e4526c69a02ec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (181047985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bb58e741d99add52d7852f3db6ab54e2f2890e67a479fa185791d956a3fe05`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:07 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:07 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.5.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 19:16:07 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:16:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:200b2ebd8dbc82eadd9402cc5f4059a1c5e5d3f9e5fbf0a56263979bdf5a50d2`  
		Last Modified: Thu, 05 Nov 2026 19:16:24 GMT  
		Size: 177.2 MB (177195396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1a4afb15983b798c4e538fe7e7b81aaec2130e1e708ebc935bfab35df4c786b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118867378f4d548f53f9dbf3c76deb7bd28ac103bc123f2175c65a6025bf6944`

```dockerfile
```

-	Layers:
	-	`sha256:42ff1558b83b46c2fbb9858aa9f822556ad0a09089c50bbbd5f8992b47805aff`  
		Last Modified: Thu, 05 Nov 2026 19:16:20 GMT  
		Size: 7.6 KB (7594 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ef38f559b318ea33735a3eda0a072fad3e410385a55558b9ffd9e92a8c6d8baa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178940851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c4bca35ddc0461c555f5e4df404a03ebc905f49616a800ea1dc034e2a59e4c`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:07 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:12:07 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.5.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:12:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 19:12:07 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:12:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca50d1e39e01d103ebabf9730b0ed5d71a56ad0429856d3d8fd455ac1a36a6f`  
		Last Modified: Thu, 05 Nov 2026 19:12:24 GMT  
		Size: 174.8 MB (174750630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7ebd8fa40d3ac163972d4e0beb3fdaf2f7f8ae95220f18b578b10f05c253b797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0072456a6d114af7b3eaa7e8f6e180013d3b6517847fbc9f9678115405318f9c`

```dockerfile
```

-	Layers:
	-	`sha256:313a001c46a126e6d71892fe1c039ac5549ab4bb39e6f339c04bce654a295fe5`  
		Last Modified: Thu, 05 Nov 2026 19:12:20 GMT  
		Size: 7.7 KB (7685 bytes)  
		MIME: application/vnd.in-toto+json
