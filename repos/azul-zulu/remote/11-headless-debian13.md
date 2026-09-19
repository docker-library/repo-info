## `azul-zulu:11-headless-debian13`

```console
$ docker pull azul-zulu@sha256:1147b1898532ab394ffe0ccad00f015dcc349ca87a65f7fc7e813744fbba1515
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c142130540172cff1a76b7d50f37bdb5488e476fe15420627e0c6b6ff51c394c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175034663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005d5f5435e9271363b5455d9b5f6b734e5850892c0acb54157f7550b412aed0`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:18 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:41:18 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:41:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Sat, 19 Sep 2026 00:41:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d5605858e68a312a150cab9f0cd49e9b6b2dd6d9d77c83141b815c91d4b676`  
		Last Modified: Sat, 19 Sep 2026 00:41:31 GMT  
		Size: 145.2 MB (145204245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bac052749c548d110069f72d99893285acdec16b5736f06bd6b05822e5e03721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e016b5371867cd88cca8a68297373ff418ab06acdec479509c6e7471d7fadca`

```dockerfile
```

-	Layers:
	-	`sha256:5279b94ad8d5caa8e6cfe6f8ea1c449932440cef19dd70d6f28438399cdea5e4`  
		Last Modified: Sat, 19 Sep 2026 00:41:28 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:10b574900e8a086b8bc4499feae20890e9e036292a1b5fcc165e83d7e0fc6187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175087883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2acae94b61509f8d1a3e29ddd201ef094c6264db935b7a0e363f416b31f120`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:59 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:59 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Sat, 19 Sep 2026 00:43:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4410b2b8dc38157977813235a81eab16118e7da9e34f576169de153a0ac28f5c`  
		Last Modified: Sat, 19 Sep 2026 00:44:14 GMT  
		Size: 144.9 MB (144898192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5292a424fd9e2e8dc292432788e933fd2f47b622e19da2edf70596d969aaefdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4fce68e58ddd8098af30d4fd3d6b710cdb944b90b7f82931f8b3e89eb543d4`

```dockerfile
```

-	Layers:
	-	`sha256:39e9062a16c951aa5c54592c4ba6fd99c7fd0f94247a1e2767d6c9b5a3a7c231`  
		Last Modified: Sat, 19 Sep 2026 00:44:11 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
