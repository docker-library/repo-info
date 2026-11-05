## `azul-zulu:25-headless-debian`

```console
$ docker pull azul-zulu@sha256:5e94d2bf5c2061e9ebb60a969bd47d73c00ff09c981cbd0e8387893d05829a3b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:46ab159819eb926b15c33026ed37fa0796a245714392bc740eae4905a8a622f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211803109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d50752f2a90e7da257ccb0ca0884d3b0a744a634931e98ec697ccbe442c541e`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:36:55 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:36:55 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:36:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:36:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 07:36:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d78ba85c645a72bb18e08eb815087052f2473528c59f8df882b78fe222ac18`  
		Last Modified: Thu, 05 Nov 2026 07:37:12 GMT  
		Size: 181.9 MB (181946977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3e7ea33f6d5b7b69d62ac1c440b4d7bc7e2835b2377c5b472044633d8d4cfee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bae75c1fc341db9b1114d55979e4aad7bac443bcedd275fa999ea26e3caade`

```dockerfile
```

-	Layers:
	-	`sha256:eaea259ce2d81eb7d6c30e74ecdd8cc90d687628119ecc3d6030aaf3a98b4532`  
		Last Modified: Thu, 05 Nov 2026 07:37:08 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:81021f9a0701fcf20c64bf67da3b1556dfea5d49831ef2b5cc2475432f3117f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211287313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b34e3ff9c1812e52c16e96d93ab06b3e19dce5e5dde6d9dc29c7181e6d3502`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:40 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:40:40 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:40:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:40:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 05 Nov 2026 07:40:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24473b669bafd9f66394b3dd65cb07194c4ca4dd5b691a1a07c1dd00fafec36`  
		Last Modified: Thu, 05 Nov 2026 07:40:59 GMT  
		Size: 181.1 MB (181073276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c7c7988a155e3192b1cc7029f3f70dedb7c28af59564f985fd9f088a7b2c2a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d99dc6762435220270da9773ac8179a01ed2579e177ea09926f59b5cae204dd`

```dockerfile
```

-	Layers:
	-	`sha256:da492bf9e7f4df5db81384e2b1560339f4a5cfbd681adeb37236ac2a9734dbcc`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 9.4 KB (9414 bytes)  
		MIME: application/vnd.in-toto+json
