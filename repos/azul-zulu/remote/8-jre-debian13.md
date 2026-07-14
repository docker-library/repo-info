## `azul-zulu:8-jre-debian13`

```console
$ docker pull azul-zulu@sha256:94d3a83f4dacaa0676dea83bea31536ac493b2ebc18ed20617012b0ff09957fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:273e7c8d115dd03d79cf6c089e80e7f56473d306669760b06fadff35ac3fee82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79613357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1c9c0f376b43640f9a762d4dc06c0246d39a848cb7c24a2a39d57afa770b79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:00 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:40:00 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:40:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.492-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:40:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc87f01f0356b58887f7bb4cd23c3aac14933380bea5b7332c9f1a06a727c0f`  
		Last Modified: Tue, 14 Jul 2026 01:40:08 GMT  
		Size: 49.8 MB (49832452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3fbc3e3238a69191f54ea2554303028fc17812d01f9de0f9e7f600fde046fce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcdc0038cfe1ccfa4b9096f08d32ba52fada9c15350fb157517865ffbd96a129`

```dockerfile
```

-	Layers:
	-	`sha256:db376ecceefe5f52e173729f4cfb6de20be9235e79cb642d9a8f82aba46c8a57`  
		Last Modified: Tue, 14 Jul 2026 01:40:07 GMT  
		Size: 9.2 KB (9174 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fc2b2f92f8d78dd06378a2ae1bd6321c415a6ce6289e812babbacce913598a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80199005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c49701196b17844e1dc6344b79d9d2df8b0fa63b0d1bd588cd3ce722f8f70b5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:42:48 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:42:48 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:42:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.492-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:42:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6489788d5e36324ab560a6e65570709d5be5a96173ea858a0900510f294e3c8`  
		Last Modified: Tue, 14 Jul 2026 01:42:57 GMT  
		Size: 50.1 MB (50055300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:700497035f2c89c3c9304a7105956417df1dafe2c23280f95000402ff7118dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebb55b3e0f631c5acce28d1c47a6a30a91fb2e6a87148771b063bdee411d255`

```dockerfile
```

-	Layers:
	-	`sha256:16dd52ae1f87b16cc908ed72933d050a3768dc418d2cd3901df77f3dc58154ed`  
		Last Modified: Tue, 14 Jul 2026 01:42:55 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
