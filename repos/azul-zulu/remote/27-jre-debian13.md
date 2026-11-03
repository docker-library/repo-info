## `azul-zulu:27-jre-debian13`

```console
$ docker pull azul-zulu@sha256:079b22b598fc236ab8d307907377e16c201ffa1c7732d010529e67324c79da0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d53818ecee89d6191228c4b7586792ad0023062803cacf864e730bbb81394583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120944094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95471c6f690e986cf546d034d042654ce07fcf35bc54d6a4f7a86c467913f598`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:10:53 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:53 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:10:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7464baf1f29d579b70d216283f1cd578624f6640e760020496e451d08672c5`  
		Last Modified: Tue, 03 Nov 2026 00:11:08 GMT  
		Size: 91.1 MB (91088858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ae9dbc5e892941eeee7c796e440ed39bdc7afdc347ec0d4175472b2f29c0d0f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d14c05f637f88f043ba6a7342dc689795aa790f9311f354b26e28d98500ae06`

```dockerfile
```

-	Layers:
	-	`sha256:95c5164fc86b5008626779b5b6ad52962b59ca7ad4c576ba6259bd1bd071c37f`  
		Last Modified: Tue, 03 Nov 2026 00:11:05 GMT  
		Size: 9.2 KB (9203 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5406231d06a3fbeb35f26543bd32c4b1c09b0c818d340dd5a0fe4c093340b073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121190309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3015e08f81c1ad28a1ca0e4294e98c4697cbe508fed14930d74b650212d2eda4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:11:16 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:11:16 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:11:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:11:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5dc85be909032ddb3b8558121c19a2a9c36a3aaf8f161c43e6459479978a08d`  
		Last Modified: Tue, 03 Nov 2026 00:11:30 GMT  
		Size: 91.0 MB (90976813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6802aa442e2bc192b0124467f4eda77d3a34e8f7e62fc3d81fee5eaf937152da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5b805bc2936a57db1d2ca7cac8fcc2b9a126f174d7224acf822181d5b62bed`

```dockerfile
```

-	Layers:
	-	`sha256:879336010ae0aa30398ea2d654b7fdbe30db9ce258fa8a7bb01bd053b1d6fe90`  
		Last Modified: Tue, 03 Nov 2026 00:11:28 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json
