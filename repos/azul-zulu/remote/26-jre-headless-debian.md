## `azul-zulu:26-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:003bd0eccb8c26f57ceeefd6de72a297df3ab3fbfcb7006f06d5ef79dbb96bbc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4b887b48e7b53580e227090f45dfba101cc57f227fd0ee965d8beef660d2768b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120024728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2eef7ce6cd4280e10d71fbbd155474505d8dda7e2db6fea1be0715698d4a717`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:34 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:34 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2736d15d44f939f425fca8f728161ef5f4c7313cec5f1531d02b0bcaf5a943e0`  
		Last Modified: Thu, 05 Nov 2026 07:37:47 GMT  
		Size: 90.2 MB (90168596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3be5a2651d74c011067b10901d9df70ccdefe24eda713b32a08199557f84f8f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6585fca62c0f75f27b6b4aa826a164b0eea58cc294ef8f3a8d5fcaa42e7f155`

```dockerfile
```

-	Layers:
	-	`sha256:238853d9aab3ec393f640bbb9ce743b8a453ec20e3fd74f4b30fcde2afcee668`  
		Last Modified: Thu, 05 Nov 2026 07:37:45 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3a524f9680e1b607b67691174e59208e4463cc310f74fd24af3b56fba8605c22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120322950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2578a598942ed4e121e15d1486d1c0c55d45f149e8007692b72480a7a11dba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:24 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:41:24 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:41:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:41:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb831cf97b18fe02b3181540c0a39f6e090b90db5d30b05b9dda29a1df92ec42`  
		Last Modified: Thu, 05 Nov 2026 07:41:38 GMT  
		Size: 90.1 MB (90108913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:67914fcc0a1374b77ae17e43a7fb95071ddc1c5bcc9b6dda0d9d3f246432c2e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33a5374d4000a7a264aace63b1a40247ec67e4a360c441ef63dd0be33097532`

```dockerfile
```

-	Layers:
	-	`sha256:6b7eb4e9365308961d1cebeca319c8442c5bd2a7482fd7c22df8c7d192c2ff70`  
		Last Modified: Thu, 05 Nov 2026 07:41:36 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
