## `azul-zulu:27-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:83e441fbd1e3310934db96e56732d98ca84229a6f7fbe55f2ad949c8a4d1a54c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:aa392af9a9a852452cf0f0d0fdfa44bd6fe52714bde3738fedc10e37e162fec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118867542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec4187025f731605317161a2074097ab922f0239f70dcb3c9b1c5d602071475`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:55 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:44:55 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:44:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:44:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16dfbf9a06298556e489436356999be6825e51f55fc18898d76006fdd101f47c`  
		Last Modified: Sat, 19 Sep 2026 00:45:09 GMT  
		Size: 89.0 MB (89037124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0f10b40df95edd161daf9fdb3f49d3eeb12be81d0612a0c85ca8791d9b275528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922d82e40f118feaf328dbb0f51888a9570dac03b673cbb1e43155e3abebd342`

```dockerfile
```

-	Layers:
	-	`sha256:49dffcc9ae075369d835610554b2a3d07929f48149075d2986f5e5a602953770`  
		Last Modified: Sat, 19 Sep 2026 00:45:07 GMT  
		Size: 9.3 KB (9290 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:33ce7f6288136265bbdcef40bc916478a76246666df74e8884d54c19fc5223d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119116085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a699aa42f2098a92c0afa3b423385f53941235bf459e4b2c0376ca0cd11a5499`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:28 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:47:28 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:47:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:47:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ff97bde61e48942c712dcb4ea3d25ad9decdd62e81257b910973d779596eeb`  
		Last Modified: Sat, 19 Sep 2026 00:47:42 GMT  
		Size: 88.9 MB (88926394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:32d2c91683301812b6efa5ec1bc62fc695a216bfd61dcd95395c6ebafa525386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8780d91681f692df0ce24d8b00265a32f29b9760ce3874d46ca01e3ff0927bf`

```dockerfile
```

-	Layers:
	-	`sha256:01a71826d08102e630580be85d031f0be23811255a6caf25efcc674f0cbdfac5`  
		Last Modified: Sat, 19 Sep 2026 00:47:39 GMT  
		Size: 9.4 KB (9394 bytes)  
		MIME: application/vnd.in-toto+json
