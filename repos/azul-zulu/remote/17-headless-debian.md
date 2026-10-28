## `azul-zulu:17-headless-debian`

```console
$ docker pull azul-zulu@sha256:96ee7972770a774c46c542e845b26de0b53ffcc4f3309fe39c9c177d897b83ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b3c74c83f046718203675ff983a9ac75c328aea8e7b375740265d16d44c60fe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179601161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd03d54499089c774b2425c359c17f09869e603b4258982e54e70cf3155fdbb8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:36:50 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:36:50 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:36:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:36:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 28 Oct 2026 01:36:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0acecce6f8dc9d463d131a4c45ea7f53998f568919345ae95c12329bddbcf4d`  
		Last Modified: Wed, 28 Oct 2026 01:37:05 GMT  
		Size: 149.7 MB (149745925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a2289d1091e65e2235d86d6450ae0cd73bd7939161584730238a21b76a9e896c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc01b9a478ac1a196642c2b45f3738283a0ae70bb9dcec5fb0f0e537676e9269`

```dockerfile
```

-	Layers:
	-	`sha256:785f19b37a62e79fca34e2169290045234e310892c0ef9777c7cf1aed175c48b`  
		Last Modified: Wed, 28 Oct 2026 01:37:02 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bd74645e657a44b8dc7e1881231646dc3378e3ec190c9fcc961ef65bc217e8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.0 MB (180039061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0f1561963d74e2e4c0409f9e4b0811bbcac478dfcdf080c4bfffd8eb1c2b26`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:41:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:41:00 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:41:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:41:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 28 Oct 2026 01:41:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f48031d4a87170604c2531f08c9ff8fb96708d2dc9a923c9c30d88ab6b9d2ba`  
		Last Modified: Wed, 28 Oct 2026 01:41:17 GMT  
		Size: 149.8 MB (149825565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:39c10714ededa08ea2f079cd85b4bcf00d22afb6c541c1744126f63cc6c36a07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b319fd1e92bbb7486f1a0f62ff69a5bc496811ec9f9e773c6c0411a1435fd39`

```dockerfile
```

-	Layers:
	-	`sha256:556d0fa5359178b1161a83510cceee00dca9b74d507f92e12646d6fa5ad3ec46`  
		Last Modified: Wed, 28 Oct 2026 01:41:13 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
