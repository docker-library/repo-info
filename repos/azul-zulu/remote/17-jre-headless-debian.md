## `azul-zulu:17-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:32ddf54fa40661bd8ed4cd8eaa7eabfc5e62239e9555507949dd083b816f3869
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9552e02984bad7059b7e923e13ea32087cd59eeca3a868d3176e7bc4ba909069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98820471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36735f26893865a06a009e3910bec2fdccad678aba617ecdb1cac8f3e7764270`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:33 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:33 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858e7550abe13458fdb3669ea5aad1fdb535c69555cde307fb837ae3f854a622`  
		Last Modified: Thu, 23 Jul 2026 22:29:44 GMT  
		Size: 69.0 MB (69039566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1736301c5a99348b914a05bf66c1023a0b470e4692f08c1b54438e60dea9412b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6047b18b02fcff59c493461926109c6be867a6802fc964f86bafd4a60f556cc1`

```dockerfile
```

-	Layers:
	-	`sha256:d4e7ca95fc0868886e3eddb3320ad33048a6bb5464a61fe38676a9284f9013b6`  
		Last Modified: Thu, 23 Jul 2026 22:29:42 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:102c4b10ed340b31675801bae667314a7a1ec87e858ae429590f3a22fb4a2b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99226107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5daf16b921dcbd4aa83084f727236985d0f0fb1da62cce95c34d922aed765d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:30:36 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:30:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe5a3110b663b6fc556294ff522a76b741aa08772a551d7af58d0a2f801ee7e`  
		Last Modified: Thu, 23 Jul 2026 22:30:48 GMT  
		Size: 69.1 MB (69082402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:592f408c62fda2ba358188a7cbe25dab9e3eea9f8311486ccc329df336b28b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522544be3f3e2e265254c0573af0dcee66433f9cee4eab41341fa5b215fed074`

```dockerfile
```

-	Layers:
	-	`sha256:e4e5424a162219d4a4a4aaa42ab4ffbaa0a4f3c9f173105b1b27d7d9e94dc285`  
		Last Modified: Thu, 23 Jul 2026 22:30:47 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
