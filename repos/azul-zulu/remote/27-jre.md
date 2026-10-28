## `azul-zulu:27-jre`

```console
$ docker pull azul-zulu@sha256:0ed0b3c8eefbe7679799e19fa6f529e8ff32119085176f37b22c704b5b3065dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:85fab9332fc2fa47ec15a2f4b931357be509b65f156e4f284562361222156681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120945191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:529dd9e2ef0b442012188338c47360c0650c4d75665800777d5429c78cb1d779`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:36 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:39:36 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:39:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cee90a7be06b4b25c8076402cbad05cca83b49f80c40e61b974a6dea405a65e`  
		Last Modified: Wed, 28 Oct 2026 01:39:50 GMT  
		Size: 91.1 MB (91089955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:85fdedc568f9433991accc0ed22c68eab4a8f02c35aeb18582be1fadf8aac750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730bb462c0fdcf3e547d1bc99a05ceef17d8cf2f3b7d2eefdc2f9a584bcf946e`

```dockerfile
```

-	Layers:
	-	`sha256:0b70fe72e3a8e843ecb3fdb5d04d5b724b7503f0778246db508ffc1a5bf36a6e`  
		Last Modified: Wed, 28 Oct 2026 01:39:47 GMT  
		Size: 9.2 KB (9187 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b65ff003535b68187f513d241dc99127b34497b49ff8f36d1bf0323427a61b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121195842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f96a813bea1aa037e779a4b0e348b41726f71fccdc7ddf2d8c9698c61dfbeb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:43:00 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:43:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4ce7594009948f0f9bd2e3193e91fb5ae0b312211548ce5d83e0fe2c476cee`  
		Last Modified: Wed, 28 Oct 2026 01:43:14 GMT  
		Size: 91.0 MB (90982346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1432b808be08f8680349a308d5c794f49c62f5f57dbb96a1c78169a85f9a3014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78dd58d1c529906c34a9af63414a8869cd33bc7d41bfccd5171b573a324bc59`

```dockerfile
```

-	Layers:
	-	`sha256:82e422aace51c32f3e755f4d4305fe6fa807f2f105fff9bec592e22c1c9328f5`  
		Last Modified: Wed, 28 Oct 2026 01:43:12 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
