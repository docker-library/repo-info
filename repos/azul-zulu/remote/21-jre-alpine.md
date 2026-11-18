## `azul-zulu:21-jre-alpine`

```console
$ docker pull azul-zulu@sha256:5e459654233f67bcc253e9083b639f22c31f22d30a5e9b240705d3a462896590
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:044f4186bb860649e272bbc820ebdcfd952845f328b0c569fcf1a0097853d942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75480751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e78f97c54a4ba75880b704f02512b6ff1dccc2872e58ac3a2ab1df6551b95`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:41 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.13.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:41 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0ca47b9b89092eb44a29b47c53fa41899de7a435ecd661384f92c0122f0c0d`  
		Last Modified: Wed, 18 Nov 2026 02:42:52 GMT  
		Size: 71.6 MB (71628162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bf5a8f666c49b3e00854d0d5cbddf2a834fe399eac103438c14ace646211c072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a56ca1966ea7dc89bfaf2aed1e5172359c16a1dfb65b095ece7d25ea5e21e4b`

```dockerfile
```

-	Layers:
	-	`sha256:8ec0c51a0f5317e2d8e7635ee5bf2f4d7f332175997aef9595671c9721ba394a`  
		Last Modified: Wed, 18 Nov 2026 02:42:51 GMT  
		Size: 7.5 KB (7491 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c56cc06127dec7495c671eec3d2e34e6a7fc860417c06a7b1c7db1a7e4cf9273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75043585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079243c2e99a5257508ceff85a8ddad8b77137c10f97a06a5f0790ca39719a7c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:42:35 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:35 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre=21.0.13.1-r1;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:35 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265f9f0099deb3341162da40715742ca2a6bba506b9061d42c91f9a2f149b17b`  
		Last Modified: Wed, 18 Nov 2026 02:42:48 GMT  
		Size: 70.9 MB (70853364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:abe38feb5e3cf44b3463bf2534d2e339750ad4885d11497438430ce2e5281ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c92d82bcf714fc44639ed75237125b21f51e9db89dc05c9e9fa51182870a57f`

```dockerfile
```

-	Layers:
	-	`sha256:2b88207e1c038a05df6b745d1d623f2229cfa0a25c226f91b608e3b815434682`  
		Last Modified: Wed, 18 Nov 2026 02:42:46 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.in-toto+json
