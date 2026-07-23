## `azul-zulu:11-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:936f74075ae2633863cadc99cd125b24f2bcad5d3fe54cd2bbaa292ed296812a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8ce3046f1638d6641430cdf12c6bdde39869e8d134049aa4f4c8e9a42bea4042
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94398985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11ee790ce2291d527f5b972175ae2f1d985ce7e425514b8584ab23f5658fe3c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:28:59 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:59 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:28:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d605d71a34c4e1aa337017b2368233f2f0a460a8bf24c950e5724dd7d03637`  
		Last Modified: Thu, 23 Jul 2026 22:29:09 GMT  
		Size: 64.6 MB (64618080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:84ee628d6690b1ad29d3571d9dc0177773def8dbf1a126c6a4f746d954a6dce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38adc95ad61362c31fa38acbcb69714f8999262e22d6446bbaded7f2fcff5e0d`

```dockerfile
```

-	Layers:
	-	`sha256:ba4a408978c911c6ea087cf587a1359d225e83d4d1e166dd9425964d30d4b877`  
		Last Modified: Thu, 23 Jul 2026 22:29:07 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:60e94fdd7186cfc96b15c801a4f846f1745fad727a3a1e2400b85ec8432f2303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94584900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb84df7e850a21cd3cf6b90164f7491f5426938039bb3a0994f0999904be76a0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:55 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:55 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70aff6515eaa8be4d2e7d43e2e4acf0ba1a23e1711ebca924f2477108a69aeed`  
		Last Modified: Thu, 23 Jul 2026 22:30:06 GMT  
		Size: 64.4 MB (64441195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0afbc8c8e39c29f11e2018d847cc7bb8fb9ca2781d98a5636520468c7ee12ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:574bdeb9dd705a1a72b500c395cac80d011c09fc921d8e85b587e8215e0b3128`

```dockerfile
```

-	Layers:
	-	`sha256:1d24f11b2d9c2259ce471c8e0402c726e6c662ceeec9b9f8f5a91339e300aa84`  
		Last Modified: Thu, 23 Jul 2026 22:30:04 GMT  
		Size: 9.4 KB (9403 bytes)  
		MIME: application/vnd.in-toto+json
