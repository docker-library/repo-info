## `azul-zulu:25-headless`

```console
$ docker pull azul-zulu@sha256:7b93d9bb0971efd09f0c693cba25235c7f794613b593fc14a0980febe4159f65
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c2f79a2cd3a130286b981973c3efe3316beeab1e588b9eb110eae94d6ea88214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212684878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b75879aebfce3f1aeada8292d907692c41f49cb696b6d86e7c34cdb6598d2c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:42:44 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:42:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.3-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:42:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 14 Jul 2026 01:42:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe446d30ea8b3a31b4f6b032429363a45b0aaa02972b23999f0992ac5438e6`  
		Last Modified: Tue, 14 Jul 2026 01:43:02 GMT  
		Size: 182.9 MB (182903973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:937749383cd6df0defaa53a4c807950b4b4b45fb381f25ad035f6468f4d2d27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db2a0056f54795a91cbe8c79980a0fef63a16afd9fef65a10a264b82bcc1266f`

```dockerfile
```

-	Layers:
	-	`sha256:e92e1d395a5128e2b072fdf156fc20f8933fe83c4bad7598774176ad06814245`  
		Last Modified: Tue, 14 Jul 2026 01:42:58 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5a8daea84124f57463d63c3fdb7e7f7698d454f5189b23a81f41e6878251f648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212198712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ce2afeb10b113d46ae0df0a4f8753ae36675bb3c7118ee22d8eee694a03ed9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:55 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:45:55 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:45:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.3-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:45:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 14 Jul 2026 01:45:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ba1fe387e58630fbdcca169112264e75aed26e3e2caab894b11e26a90fbb85`  
		Last Modified: Tue, 14 Jul 2026 01:46:14 GMT  
		Size: 182.1 MB (182055007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3a9ef969ddfc86e2deb078c1207d6660ccc3fb81b77c9fd75e76d685380c95d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a3dd071e68295a3562e1fa18cf8078d13ef64f58266d69b593c4981d15f964`

```dockerfile
```

-	Layers:
	-	`sha256:a91386668c85b4fd297c2395a87acf3a1a3be9a65c9619b062a5d5dfb2630cfb`  
		Last Modified: Tue, 14 Jul 2026 01:46:10 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.in-toto+json
