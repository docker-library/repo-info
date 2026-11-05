## `azul-zulu:11-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:a2750ee10c2092dbdae316f70707d4d0ad00f2bc7d33fe72d34113e75bfa8dd9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:abac20a52df30059400b6ee3bde9da4de0cce442115bd79a1a5f7687891aeab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65787500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac56978a557ce9fa69917e071fead8e47bc5efdee74eceaa3166ebc9b40b583f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:19 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:15:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:15:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.33-r3;      java -version # buildkit
# Thu, 05 Nov 2026 19:15:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 05 Nov 2026 19:15:19 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d87321c0678b75c0ea4268663b94020e23e47ed96f69f513a6086b92f6c4a2`  
		Last Modified: Thu, 05 Nov 2026 19:15:30 GMT  
		Size: 61.9 MB (61934911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:68882ddef472e460f8cb49b9b3d3a6323b5dffcad643db40e403bb9c1d2fc69e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf8d9c05b1555c772d60dc678c079f7362992529fea689e42fc6df20cba7264`

```dockerfile
```

-	Layers:
	-	`sha256:edfa2ffeca78bebf73934fbc0fd8121034dbaf267765a6e5589cf927feec5f5b`  
		Last Modified: Thu, 05 Nov 2026 19:15:28 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c38e3462102bbb8dc20818caf3de5eb0985901a8922d2cb43b91fa7a8cfcc45d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65358459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b837a767139af8bc9ab6ec4b898ae611a61ce6de1a7f64e55b32c33228e0acc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:05 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:11:05 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.33-r3;      java -version # buildkit
# Thu, 05 Nov 2026 19:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 05 Nov 2026 19:11:05 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446435dfc2817b6f03060ce4b5a9fbdb37c2122302a3a18f865dfc558522c016`  
		Last Modified: Thu, 05 Nov 2026 19:11:16 GMT  
		Size: 61.2 MB (61168238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:af17153f1e1153c61cf56b8d165a8b32d9b5cb1e068d16ca9200cc898130cb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac15b376e0b9f684321448df27170350b4d007f1294fcf27464273fd3156d50b`

```dockerfile
```

-	Layers:
	-	`sha256:c66ead3dba8b26951cbfc26705d5ddc50bd6520b44b6d450b99d695d712e3f20`  
		Last Modified: Thu, 05 Nov 2026 19:11:14 GMT  
		Size: 7.6 KB (7575 bytes)  
		MIME: application/vnd.in-toto+json
