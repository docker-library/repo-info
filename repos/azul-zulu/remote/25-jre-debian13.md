## `azul-zulu:25-jre-debian13`

```console
$ docker pull azul-zulu@sha256:484d6110e105bee3e89d673c5c6470bcab484a2dfb021fef39d023cbb98530ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:81325dcbfc8c479dad4fc37d002f2c7291c27b3af4a9b0d57ae5cbfe728529b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120489620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc7410530b309135063811713f92fec84eb741f92bbe0059de215938c5020664`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:10:09 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:09 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:10:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d3c9f2902ffd6543360cd34b46d94c9cc82c4b6edb0af3c5c5022a0f685975`  
		Last Modified: Tue, 03 Nov 2026 00:10:23 GMT  
		Size: 90.6 MB (90634384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f8fbde64964134840ffa5a124d4fe0d8d281f553ca5fd179184944dc858907d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07bbc97a59b17da104e458fabcdd78539ccbc0cbab5aef370fa8e31bba4e2b6`

```dockerfile
```

-	Layers:
	-	`sha256:45007c9d701d4e7e378acde02b330776b2014f5c865acaa5a0e07035b62e0d5c`  
		Last Modified: Tue, 03 Nov 2026 00:10:21 GMT  
		Size: 9.2 KB (9203 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:deeb169fb7ca49bfce822460ed4f2863d53b749d39472e1699ba1d2f3dbac437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120414982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a645cfeee19dbb4bbc9a0149df908c9df27b01a8be8690f29aa4c0bd92df552c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:10:22 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:22 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:10:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b2058ee23fcb9161898aa52439aadf431c83bedd2f933dcc3e25cc10557b17`  
		Last Modified: Tue, 03 Nov 2026 00:10:37 GMT  
		Size: 90.2 MB (90201486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:05abb9be151f51cd567547cfb3f9313983316b1c5f3fceaf8b678663489421d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836926eb295871982e9b6f9c0c9282b7faf2944fb528bb36bbb26341c1ae4c6c`

```dockerfile
```

-	Layers:
	-	`sha256:2f6cf7d2c5ef9c70ea0493e5c93a7c08fc1258b7dc8bd253705ca82dc85bf67a`  
		Last Modified: Tue, 03 Nov 2026 00:10:34 GMT  
		Size: 9.3 KB (9306 bytes)  
		MIME: application/vnd.in-toto+json
