## `azul-zulu:26-jre-debian`

```console
$ docker pull azul-zulu@sha256:1c82058e316a3dd87fe0536fe9fd4de048da217838508d75062784c5bd43a6e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:633745891baeeaa9f5aaeb55c1a8d258a72a8c64fcabd616830fd3d92d95534e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121941676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78842078dc30f82a6a9b9f7b187ed101092c3e2f97fd730c019067f7ef0b197e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:31:40 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:40 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:31:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038286baf9e221fad302473bbe99e0eede8c09264d0aef7378968c0c44013390`  
		Last Modified: Thu, 23 Jul 2026 22:31:55 GMT  
		Size: 92.2 MB (92160771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a4c02e9bf40fb592891977a76a3e1b96fb19c84870b6fba1d537976c9cba8827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d72f8c92bb9a499e51a1da32cc39836351f6833c0751241a19c70218e2395a9`

```dockerfile
```

-	Layers:
	-	`sha256:1e62e9e5880d7df5082a997e63568638e0d30f5ea7d7ed9972c73a83a96c19b3`  
		Last Modified: Thu, 23 Jul 2026 22:31:52 GMT  
		Size: 9.2 KB (9187 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:92eec09a10c9fa453f056f912f713e5097cd8cc5b32148aa011626399558e45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122216839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f18976196da9191f9c6653f46600631eb1623f0328fe3aed03a350f8e12ac5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:32:52 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:32:52 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:32:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:32:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379b44e4193ac33b249f0316ca383e24cb392e1b57a4ee42d7656b11dd6320b6`  
		Last Modified: Thu, 23 Jul 2026 22:33:06 GMT  
		Size: 92.1 MB (92073134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9851edfc4c6c075561858fdfc09f4f7e15162f84366545ff323c0bfa4358f3a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359a801802c536e59cf5baddd98422d08c92250e94d71d7219efdc1349068377`

```dockerfile
```

-	Layers:
	-	`sha256:b5a119b2c17ad8d3491b9c3eb5a16d21127c6312ab728756db87b1aea8fa37e9`  
		Last Modified: Thu, 23 Jul 2026 22:33:04 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
