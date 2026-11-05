## `azul-zulu:27-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:56089f0feffeaf93c28c805119e49df627f2afff8a78a3782144460dbf6c8632
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b8bbdad5419a98011ca0f4d9eab1acbc3ef5651ed6ba75454e8de9ef340f8085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87721287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff97db491bf72f4688699bf0391a147c088a0970fe87fa791d2c147d8fdf76e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:55 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:55 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27.0.1.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 05 Nov 2026 19:16:55 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc03a6599d41c02fde4611aed06f7161efa6bfb997069752d40eea896e10ee9`  
		Last Modified: Thu, 05 Nov 2026 19:17:10 GMT  
		Size: 83.9 MB (83868698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3ef5dd6128721e22f25d61543f57f82f07f0e6b60a3d3e57bee773e8423c36b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d473546fe2620661f4a9fd56022fd3c5332237170c304a00179f73d1136ce4f4`

```dockerfile
```

-	Layers:
	-	`sha256:852bd69a497d05227c669ad612072b3e0f66bd627b2cd044e3c6cea2bcae1818`  
		Last Modified: Thu, 05 Nov 2026 19:17:07 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:32225a7a58788910e13acb8f56696d045a4cd52bf4922d21618faa0e5feee0e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86878686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:754af859ed8e0b8505251dc171074bc84f3dbc2371f6ab12c222e86f7ebcc71f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:53 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:12:53 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27.0.1.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:12:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 05 Nov 2026 19:12:53 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b93713418c502c8156687318ce15dfedef726063bfdddc4fafd550fe30b055b`  
		Last Modified: Thu, 05 Nov 2026 19:13:07 GMT  
		Size: 82.7 MB (82688465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b2392b881d4f766f60eefb85079c20fa11d60f37b8f149ed189fed999cfece3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4bb361e8d9b93ff24291a0e773b6439247bbac1d0d613e966acfddf8a5862c`

```dockerfile
```

-	Layers:
	-	`sha256:8a39dd1a06a36721ed9d28f72859827e36098b60a68c7f58fd05496ad011c281`  
		Last Modified: Thu, 05 Nov 2026 19:13:04 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.in-toto+json
