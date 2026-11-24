## `azul-zulu:26-headless`

```console
$ docker pull azul-zulu@sha256:3ba72874241181310819428beb7f1b3b20114ad6b1489715ee4b31394b7081d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d98b89ae47e4d25fb66de94c505631eb380b7b4a5c6dac3d8448bd6ee39a1728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215151090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fdcd94b7ebfbddb49befefa95126cbe284b4436912c8e67b87f442e63dd35e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:45 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:38:45 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:38:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:38:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 24 Nov 2026 04:38:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08876cff471843eb80bed1f640cedd1af3d677c4e7ae581bb6c56f77d2eed33`  
		Last Modified: Tue, 24 Nov 2026 04:39:02 GMT  
		Size: 185.3 MB (185308908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:adf74eea6b0b8d228ec4771b93f478afe24b7bf384fcd4fadb191073e24f3ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368e8494ae475a48ab12b15abc103b37f49c4ada1e481eaf4ca144ae998780ad`

```dockerfile
```

-	Layers:
	-	`sha256:e7c1d26f3d9990ae8a0d2e85ec87196edd64b16b3eb41b9c615729fa487fce83`  
		Last Modified: Tue, 24 Nov 2026 04:38:58 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2cde9f2ca6b421875114b7add31f4b269de22cdaf8cb6ef787efead70fc30097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215220020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf705fb8a1a2774bc6460e2f3a3dda405d2f870805e248b904e18165c305462c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:47 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:42:47 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:42:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:42:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 24 Nov 2026 04:42:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2000d05f159502954bf4b5a5dbe856ed2a2fbf515c2433e2b68323ca083f2e`  
		Last Modified: Tue, 24 Nov 2026 04:43:06 GMT  
		Size: 185.0 MB (185021986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1c4913a82771c10e21ced64dba63d8de9031eebe14dcd3ddf2b4b522623db42c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f1a65d2b62ad1749366884c56660e73a223778cb8d00f069040f6b71417095`

```dockerfile
```

-	Layers:
	-	`sha256:1f3411f72f4cf19fefdeb641042fc1142faa82237fb92751df0a83d737c2b3aa`  
		Last Modified: Tue, 24 Nov 2026 04:43:03 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
