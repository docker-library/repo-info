## `azul-zulu:17-jre`

```console
$ docker pull azul-zulu@sha256:dffec45707ec5194dfac0ee61b383802e29ba753b8bb14ae06bff1e3e3abc2d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:07539045c225c28a6c4afafc934b07c9770bc6ddf55128b2edeb46521b1ce11a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101405483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed1bebb75dab81418e23f8c94b9519185372bfd8e5d05012db6d8658956e9326`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:41:23 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:41:23 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:41:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.19-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:41:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff5284aa37065139cc47502adb721f2b00460cd833f503225d0a286df045338`  
		Last Modified: Tue, 14 Jul 2026 01:41:36 GMT  
		Size: 71.6 MB (71624578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bf418fd55d8de4977d7467dc2d136a9bf49a88565a8166745ec87ba91060c595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee597111c5e4245e0c500e5aeb5d1643a0b6798d8821d86639e86dc50a84db3`

```dockerfile
```

-	Layers:
	-	`sha256:6449bd49f98719072207d875a60956c84c145e0ea1e845216e99a1190c0c2c5a`  
		Last Modified: Tue, 14 Jul 2026 01:41:33 GMT  
		Size: 9.2 KB (9190 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:61471d33f937a3728fd7d040bb4a4e4a92fdb0de4b345a6b2425dfc9b9a27087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b97985f878194df8a7e55d08fd9e3ace8aeb58a474845e53d6708e679b145a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:31 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:44:31 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:44:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.19-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:44:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888f38d9a9041f5270b67cf9b7cc499d42c4b60284025676834f86163f71c089`  
		Last Modified: Tue, 14 Jul 2026 01:44:42 GMT  
		Size: 71.7 MB (71657195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:569290852caabf3a2b52a6a9057393ba74a9c8084f5d4332b0735cfba0d47b42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca31f5945e90ed60b10a2c95ed15870173779e57295fc341f94a7376d195645`

```dockerfile
```

-	Layers:
	-	`sha256:47d71f3903c3224dd64dc163a9ec61cc57bb2a67e9162c96aec891b57c33d83c`  
		Last Modified: Tue, 14 Jul 2026 01:44:41 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
