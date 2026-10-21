## `azul-zulu:8-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:27543dcdd461ea7c9afdb0fed9fd1f5142d7b7ab0948a226e4836af8515e94f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a1ffae61d90a66b819268a8208175c5ef02c786dd41a387df7178dbf89d6e384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91341667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e0be7470a5a99de63e9298edf87d5e8eb8125490138bf3a0ed8009dfcfc31e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:23 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:41:23 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:41:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:41:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2df41e720568af9a39ae9fc774c28fcbc1ea5defcd5c15148cc5608c4a93a7f`  
		Last Modified: Wed, 21 Oct 2026 00:41:33 GMT  
		Size: 61.5 MB (61498088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d358af8061159e5e022fb7a953fadd2b8fd626fe40cdafe15fe25a25532a2c56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f810ff2ba7cf18e4a288fda093d0cb60029b9395621130e628d39f6326d3bfec`

```dockerfile
```

-	Layers:
	-	`sha256:eee263938658bf018f3ffcf5e7be8c0dc947ceff3824684fc95a222f78d30495`  
		Last Modified: Wed, 21 Oct 2026 00:41:32 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:31da983bef8731a1de7914315a5b020027c60892706bc7defba17bf0a0884a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92021863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd952dac5b6e4378a4dc949ee85cc0b648e41c7b1f016de70493858fe3b793a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:45:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:45:00 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:45:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f420c50677a8bb438ae06c71b0d4577af2b24235e83f442dfec240b5674e985`  
		Last Modified: Wed, 21 Oct 2026 00:45:10 GMT  
		Size: 61.8 MB (61821385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b04216c981f11b664255343851823f5837fcd74c8dd9ed0b22086d4e9a047810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a1cd54914f8c6a0b1425186138c8ba0ee5ac97ae3d1e11cec215de98253873`

```dockerfile
```

-	Layers:
	-	`sha256:725e722061f6a28a8209c8a869948baec793031445edb3d9882c9c9bdce51d58`  
		Last Modified: Wed, 21 Oct 2026 00:45:08 GMT  
		Size: 9.6 KB (9582 bytes)  
		MIME: application/vnd.in-toto+json
