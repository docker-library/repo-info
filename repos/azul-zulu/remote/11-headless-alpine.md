## `azul-zulu:11-headless-alpine`

```console
$ docker pull azul-zulu@sha256:b35d2a075bb333702b7f941f1e9391ab7ac0eda0b0819b31441e668a7197f7bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d8bf49a572a19ace91c17eb45c6a2e8b49c8523acf3ca2a98f370dec6d64b172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143898443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d73dcd589694d66a383430458cff161ba8474dc7775332c33b4611d9fbbf53`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:22:35 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:22:35 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:22:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.33-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:22:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:22:35 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:22:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e7f75427f6d008a1e8f28b4411ea20eafd88501f6aab88f218abd388243242`  
		Last Modified: Mon, 09 Nov 2026 20:22:48 GMT  
		Size: 140.0 MB (140045854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:121f1f4d647b30c54d4a2e4ec1d9687f440d2bdca8541b3475a08c2c005c8f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6725d0fe7d9d19a3c65217740bf75f676c0f48a5a6cfcb68f997b2507524ee`

```dockerfile
```

-	Layers:
	-	`sha256:c4385ea9dae32f579e0899b17c6c26fc563ae52056238a7e3316e6dcf5a98bac`  
		Last Modified: Mon, 09 Nov 2026 20:22:45 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5304b2cd6fb3262edbbb6b20beac022650d587763ece7fdaa5fa3e8e07dee40e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142538028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fe8e82c0befa93e397b2616db57fd372dde6da1a80b6df773665a1ccd3ad55f`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:24:20 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:24:20 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:24:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.33-r5;      java -version # buildkit
# Mon, 09 Nov 2026 20:24:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:24:20 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:24:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a462703900fd36fbc9af6b50ac1285e45967da078ff39a5016fe678754278ce0`  
		Last Modified: Mon, 09 Nov 2026 20:24:35 GMT  
		Size: 138.3 MB (138347807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:888cbff06a37a9b23076ffc0889e1f512a857c89f4782af07accc21fe0bdba42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0396bc95a3d1e20276d12d756e359298b1f14c1f7559a251db60beb4fac96bb`

```dockerfile
```

-	Layers:
	-	`sha256:4f73ba1e4bff9ecca5458b37d1cd4ee54fdf13863d8234f21e6f1bdbc72ebc3d`  
		Last Modified: Mon, 09 Nov 2026 20:24:32 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.in-toto+json
