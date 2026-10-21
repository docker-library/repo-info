## `azul-zulu:11-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:33c5e81b01835f0532ff76485d1666d8d106a4998695fafc46c4eae3f4ffc65d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3f44498f690735b4506bc9b821e6d63c04f9ebbac5c6ad7856b762dbf4abda06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94467144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1d0122f8b369dfccb1c118c8f6dd7b5b92652a3ba1275a8f1f4fcf16aa06da`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:01 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:43:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:43:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:43:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438ee34631b438a8a16291a6a958feaa10dd82efb6e2687b88ca277e7a1afdf1`  
		Last Modified: Wed, 21 Oct 2026 00:43:12 GMT  
		Size: 64.6 MB (64623565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6f2e8704a161a8601ed280f86062c64b6df06c8340c648568eddb226e15a30b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789f2d05d4fc8c90d496a7e2832d9a9cb950fe3bf9d906be9472a54e7991c96b`

```dockerfile
```

-	Layers:
	-	`sha256:d0a5ff4d6461de78b2f5adfb08e4390b5582412cdaa4aa4bc49df20e4c2b16d6`  
		Last Modified: Wed, 21 Oct 2026 00:43:10 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7534ab18a1d7e2088412029ecf34fd5aaab3a500d53f10d24dda52277e888d1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94654689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074b442696fe73ea23e7b4f83a42ec8c84742864bf0faeb656fc936de7eb6843`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:20 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:46:20 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:46:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:46:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f568f6dd49fbfaa45d610b392bbf598ec57469d9e02f6cf452241b1fc68d0e`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 64.5 MB (64454211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1bb44ae4662069dd69a15a3ff74a049c9a9c176d984ade9c27279eb5f92b5077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdafb6a19761dc97dac2be325ee1b976f36686a604ac69b8c3c40fb4c2b32930`

```dockerfile
```

-	Layers:
	-	`sha256:1d3277aeec6acfe3e169a912b14a7a59774d0be97f0e50703b9dfee68ad41555`  
		Last Modified: Wed, 21 Oct 2026 00:46:29 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
