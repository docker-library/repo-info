## `azul-zulu:17-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:7de90f65e04d48e17b58d33a4b0a44eca5ddce1c8affb313abd26d4881d0bfd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:465d1b8aa7df6071d43b2652b2bff9c08edbc804713ae4172bd841889d95cf06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99051143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b991605d16c4a04fdd1c1fcf2bbfe958d94a3c07dd27bfab33d9e3ccbdb8c9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:08:47 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:47 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:08:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a26a5043e2d7308d193b4a826c76ed8a07658d0a883e88095c76430cc7ae50`  
		Last Modified: Tue, 03 Nov 2026 00:08:58 GMT  
		Size: 69.2 MB (69195907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f7df5b4250b4704cc1f636b23f54006f41543b07425013ce7db45b4bab52cdb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:addeec1d279a9185138b75cb95f2dcd6b8821100fa866bfc9e8f83feb0e0f104`

```dockerfile
```

-	Layers:
	-	`sha256:bf329d1f99062f562c48b42536c7f9ae29eb41c6e5502404f47787960b6f900f`  
		Last Modified: Tue, 03 Nov 2026 00:08:57 GMT  
		Size: 9.3 KB (9318 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6fbc85b9205a66d6134c31fa7425ed2a920da90f09fea2b4298e300c8607975f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.5 MB (99473106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169640424480337180cd4d182bd4590eb9f375fbdcbd126f226c8e285a378271`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:08:51 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:51 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:08:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a04be95bf1e30e371a89c1cdedf9d27add2242910695d02644142590aa0a13b`  
		Last Modified: Tue, 03 Nov 2026 00:09:04 GMT  
		Size: 69.3 MB (69259610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:926412bba5dcdac88c64e87b723d096197f396127991205d2f1d520b636338bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1a71f6e9606174cd5b02aae55f9c414a0ac9c6a7056ef30150d638991b302e`

```dockerfile
```

-	Layers:
	-	`sha256:3c7d0fc6f9d6459a5947c6d7af9cfd8988bed135a10db75d2867f2f5a259f89c`  
		Last Modified: Tue, 03 Nov 2026 00:09:01 GMT  
		Size: 9.4 KB (9425 bytes)  
		MIME: application/vnd.in-toto+json
