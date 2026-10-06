## `azul-zulu:11-jre-headless`

```console
$ docker pull azul-zulu@sha256:a0c2221463fb8b7ab3fb09dd234ad7f7e427c23c7f659ec01a9a8ef368f16f4a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c75335326de7f5f8472bac73baf7608223d873c0d1549d2b8aebf270fe4a7891
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94466734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb8eb485e8705f38d9c41638005ebd8904a450451979c50d0bd46d8ea724664`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:38:17 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:38:17 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:38:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:38:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ba83b4f6b08aa857a1d779b15a73e4c8b74f7af2345fc7bab3cdbf43628472`  
		Last Modified: Tue, 06 Oct 2026 01:38:27 GMT  
		Size: 64.6 MB (64623384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b9941f5ba1a62dbf7b2c974f1c29f4079436b05402110b648523f963cf9741e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a50f7596ed2ab773d2db506334b340e80d6be52ea52a00d055efd3e8ce828e`

```dockerfile
```

-	Layers:
	-	`sha256:b70b6e4923638d75c45298e74a438bddf424ea323800a82f3437e8f8e1c0053b`  
		Last Modified: Tue, 06 Oct 2026 01:38:25 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:339be81d652a4988502cc1a7c9613a687b48b4c3920f4cebb9480afc833712b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94654088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc65e77504ca1715dde26091dc66118333e9b0425266910008d98f6658c290b8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:14 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:41:14 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:41:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:41:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4411d1d44913d45005df565bc35e87d46822c9f5f1842493c8884aeef84d755b`  
		Last Modified: Tue, 06 Oct 2026 01:41:25 GMT  
		Size: 64.5 MB (64453806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:70fd59756d98d774fee4f5d0aeee6a5fac80cf4f9f1443524d6896cea16d1e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cadc85e9657df4490cd40ae81a0acebe36038fee5046d2f48aced1e72f1a9ad1`

```dockerfile
```

-	Layers:
	-	`sha256:5c804a418067b222f100c412f624813d3b0d492f4155f5fcc7af96907fbb90e9`  
		Last Modified: Tue, 06 Oct 2026 01:41:23 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
