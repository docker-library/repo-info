## `azul-zulu:11-jre-debian13`

```console
$ docker pull azul-zulu@sha256:ebd13d541bcd6a369996ac63898c747334f01560bfd592afe87b0dc6ec5fda03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:05d533397785173783ea6440f10b2ad1cc5911ad1275e4be9c9e2f02218a8fa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96546618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1565dd2047ed83bd4b59c707dda5e5be31c0a168d013ee350d8e52b472f67b76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:37:41 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:37:41 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:37:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:37:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71ff5d92e8a5e1bf3c90a8f4d27ace9fd74804e97e629e78441c44d3f14544b`  
		Last Modified: Tue, 06 Oct 2026 01:37:53 GMT  
		Size: 66.7 MB (66703268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ac1d83210107e9c9679f0feb2125f2d33f8c7cd4dcbfae70295546d0aab4dd29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6eebbeac05b405cb77c09e96241fe8a15375a7398609daf3b3e38e7aecefcf`

```dockerfile
```

-	Layers:
	-	`sha256:bdc15d6a074bc47e024c512e6b28d73b7f02b4f117010d17932305c1e499573a`  
		Last Modified: Tue, 06 Oct 2026 01:37:51 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d95b74bf7c7a3d390cbeafa31147a57797987ae4b08e614f9d6a584f65b0ceb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.7 MB (96701510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50268369b458d7525a01806e937fc9ca6f28c8490a6c15df0ec115af07c48df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:47 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:47 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c548322ee5e8182fdfe150d3608a8b50297773cffe6178cb7e53c88c999454`  
		Last Modified: Tue, 06 Oct 2026 01:40:57 GMT  
		Size: 66.5 MB (66501228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:266269b3cebc9ab22e3a239f8adf83b34f7e9ccf4293b27b10db5521b257630b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584225e67ec1530c23b9cd72fa82cdf7a7e0363bc51d4aeb8e7487ec9afb7d79`

```dockerfile
```

-	Layers:
	-	`sha256:5f7e13b7c10285a944e9a2cbdb48d9a9524aaad0540cc5cc6f57013e6be067d2`  
		Last Modified: Tue, 06 Oct 2026 01:40:56 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
