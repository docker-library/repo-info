## `azul-zulu:8-jre-debian13`

```console
$ docker pull azul-zulu@sha256:bf10fa87d09d7b810bc8aa5577432c85bafedef6052df23a21507e919b4ebd97
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ca117324e48cc7f7d4bc4eea69bffbdf5e54b4ffa1d9321d2ff7ae8e429a1a61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79148114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5568b36e14ccb014511945a4cf977fa52c1cbc70a9228f0a7a6b3e9f5c423fbe`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:00:18 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:00:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55432434ed08e53f8b4ba6e6f1ec4025c83a4f428a79f393e15127d0f8dbbea2`  
		Last Modified: Fri, 23 Oct 2026 20:00:27 GMT  
		Size: 49.3 MB (49304535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8352fb5977d2a58758b79ddc64fd3f62f67ac7b0d79a77215d2da8eeab76134f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2f21eec025203cb4fbfe1c1f1b8e9c4bb1e858021357ee007a6afe93e8bf47`

```dockerfile
```

-	Layers:
	-	`sha256:5ea1c9f99748c804aa0562cffc8e2cfc5305758f6543b4083f5bbb1e8fcf7862`  
		Last Modified: Fri, 23 Oct 2026 20:00:27 GMT  
		Size: 9.2 KB (9174 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1bb5d12153385f14d05c70055daab776501c8d0a72a6c51ebb3308a7e537be5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79739999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f92435b3a3010d0cc7a226125ec7796822ce345ef1968a7672e9cb3d87effa65`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 19:59:52 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:59:52 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:59:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 19:59:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f438fa6965bf24e2456a31d515c74968c0b66d8acff76811d5ec2dfa44a9c1`  
		Last Modified: Fri, 23 Oct 2026 20:00:01 GMT  
		Size: 49.5 MB (49539521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1bc5438a9c26637be0929fc52bde72996016abb1f4af8b14fa4c3cb6b73f7a08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e82a43ae144b9b5e30b83c19ded38ec6bc7f912e984e2b065309a5bfc43ca50`

```dockerfile
```

-	Layers:
	-	`sha256:dfac46cc45f2ecf7e6b190f18b91dce7057f9d4554aaeb5b0f65acfd47387363`  
		Last Modified: Fri, 23 Oct 2026 20:00:00 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
