## `azul-zulu:26-jre-debian13`

```console
$ docker pull azul-zulu@sha256:7da0d7114bcd0562a3865dfc65ac8449ad5748193455fb2378efda3473489790
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:33cec92074bbb4c7fb6cc682d102b488a46d38ee824a4b2ae3d32508f80f3d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121957393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4725d59ce27c7d37d803afaa5237daf910cac3e07b17f0e11af289e163606956`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:44:50 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:44:50 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:44:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:44:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2871c8100bfbd14c0e9259d2f14cd49a5791b5246b04d9a0dbcd7fe5cc790f`  
		Last Modified: Wed, 05 Aug 2026 00:45:04 GMT  
		Size: 92.2 MB (92176628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:57e431f0fe440dfea391d5f31cc23ffdb04f64f9e9a0622972dc6ceb8d3110df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4788167dc05b02547eacc991115c20030d5254c2277fe9ba037d74d4d67b653`

```dockerfile
```

-	Layers:
	-	`sha256:dc2e787882a34e99699f650ea5d1649c085466dd88099151ca7e260fcffe4a0c`  
		Last Modified: Wed, 05 Aug 2026 00:45:01 GMT  
		Size: 9.2 KB (9187 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:035503c42405359776778372f83b4e33cd1bffd46c51bac454943ea00ad651d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122230992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b0583b2481e27ef64b85c1711081710e49beb556c9c648b851f7dcde398cf9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:47:00 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:47:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:47:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae79ae49d476ecb0d798a3fbbc798cfb7ee0c7f66bb23d2065208bc4b924eda`  
		Last Modified: Wed, 05 Aug 2026 00:47:14 GMT  
		Size: 92.1 MB (92087383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c8607cefa3f7f81efffeaa1cdb19ea11d4aab3b8ccd2e252b144cc2263e12543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20099d6b04ff576ae278deac885c816026e9bf77676d8e7179c1e661a40b7925`

```dockerfile
```

-	Layers:
	-	`sha256:1f67d52a6b9b01c75ec6aeb51050244e3a4194ad35e334d5996a1725fcb1e6df`  
		Last Modified: Wed, 05 Aug 2026 00:47:12 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
