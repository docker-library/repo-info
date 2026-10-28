## `azul-zulu:21-jre-debian`

```console
$ docker pull azul-zulu@sha256:1919a82a3f6e7052e5909a388b9b26c0d4eb4dd23e3f5af0a582d93ad988fe61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:693fbd13f0e85e080ebefaeecfa8876e6c7ebc4bd7b876689de6c1769a2c4246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106448288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e29e5327d95f78dbfe334c4bbaf974ad8f378b6626f78db3f03054b3fbe547`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:08 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:38:08 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:38:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:38:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbc135daa0a57334357f54de307a4cce8de43b5f184d85cb1fcc6192901b6ff`  
		Last Modified: Wed, 28 Oct 2026 01:38:20 GMT  
		Size: 76.6 MB (76593052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:924180b124d9107f347c4a5df28f772040e53bed18d1fbecff8af0bcde791acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f4005923ed800d9647b3c8b2ac2f3ad20c95929048fc3c9da314ad0cf9d2bd`

```dockerfile
```

-	Layers:
	-	`sha256:e8e9821b55cbee44dbe37c1f6f242d66f16a05ad133a506782e7b0f3ccea4200`  
		Last Modified: Wed, 28 Oct 2026 01:38:18 GMT  
		Size: 9.2 KB (9190 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9fcd3b45317b2f9c766572ff27465ef1eb9915fa01adf715810559adb65ba73e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106463258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d013a8e476312c166bdeffc5e72e520084ee50881d996b252a56eaf3dc9b6f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:41:41 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:41:41 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:41:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:41:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3134ea0fff25474f77826b0850acbf4b5c57eeca3cbb73b4bb75278cc67d3cf`  
		Last Modified: Wed, 28 Oct 2026 01:41:54 GMT  
		Size: 76.2 MB (76249762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1f6a7caf35f283076a83c2d5eba76c1afc62008bbac28607d88b94295994af0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842c82409abeced25d02ca193c4e8166041deb4b57d941d86021aff2e81a632f`

```dockerfile
```

-	Layers:
	-	`sha256:7da95a6cd16ae77ede2561837e86de5d64433765d7cf24f81c21ccb20adcbec8`  
		Last Modified: Wed, 28 Oct 2026 01:41:52 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
