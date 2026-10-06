## `azul-zulu:21-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:f6fcacdbea1e1356ab1340b69fdc02e2543eb2fdfad7feb6a98b62421946fed7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9b285412ef24d91bb52b7f3cdac5e0cda2a282fe16df6dae9a0cd7bbcfeddf6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104198616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18f9cc865d221fdc4f4c7d93698609f63e4ffec413ad89ef6e812a4eef2e365`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:33 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:39:33 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:39:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:39:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0346a6bfcaea40034861c7ae94b46c18b17d106268dc78df6f794ece7bd835`  
		Last Modified: Tue, 06 Oct 2026 01:39:44 GMT  
		Size: 74.4 MB (74355266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:37d6390e86586b8e8e7dc454291f30febf4ba2c8287e2390290152c012c7a106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa926e740cc898b06547ce261afa6f0bda64e32f344936f0cc1cc88db23dfe97`

```dockerfile
```

-	Layers:
	-	`sha256:3ca73cd37d01052c32bb6c38fa51ba4615c3ba5433a24abad58f271b66914b1e`  
		Last Modified: Tue, 06 Oct 2026 01:39:42 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f4d71be28dd467aa618006b6f8fd232cea9cdddab276a1e7654e8dd53ce43f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104205075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5b6fb12b63aaf831393cc377f77a3fef97299a3ce94ec2f038be63b4ab2bef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:42:55 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:42:55 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:42:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:42:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316807ffba1ba4e5d96be571a79839c1db86ee040654c956f26843c79e5f6edf`  
		Last Modified: Tue, 06 Oct 2026 01:43:07 GMT  
		Size: 74.0 MB (74004793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c085308ac3c610cb46828c3306ca292335a123a82fa531fc2fd2fd7d0e6297da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac0a9ac76e88d9277705764a4e079408beaf210bb6545733b705b0d48f48d97`

```dockerfile
```

-	Layers:
	-	`sha256:8f9ff3a2b664c3c6f5afe95f6ec0f7e2cfa9d38402ed19e82f80dc820813d5fb`  
		Last Modified: Tue, 06 Oct 2026 01:43:05 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
