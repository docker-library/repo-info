## `azul-zulu:26-headless-debian`

```console
$ docker pull azul-zulu@sha256:887b53baef0a20a2038ece4240fad2e3976c1bf2f0aa7d024fe02e1a980c7834
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bbaf90630b7a80032542ce02b9faa8af55cb9d7043048b45659ec649bf961da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (215022465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2a809f6f1d2264a4bab505b31db471365e3b9ef47c7f718352ec9858a28dcf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:13 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:43:13 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:43:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:43:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 14 Jul 2026 01:43:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1115888d0af7baf891d3c2cb0619e1dd3acd3b770e98a207d2615a3a3f7b841`  
		Last Modified: Tue, 14 Jul 2026 01:43:32 GMT  
		Size: 185.2 MB (185241560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:90410e117011d4aa998ce905f59ee3f1b62f0978702c7fbdaf273e86c27b12fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c372687ac3dacbdbf1e5520ead7264c9549320df02c74efd88740eef7fb759`

```dockerfile
```

-	Layers:
	-	`sha256:b03517815f5ffb8986784db14fa807cbf913178d4ba583d088f9fd0391592a32`  
		Last Modified: Tue, 14 Jul 2026 01:43:28 GMT  
		Size: 9.3 KB (9295 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a001e1d8b233f29df2c35a81d1d14836077bb316ec50aed1cab218c3b5f4f402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215091212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14eb2871af3e127ce538daaadd98b03d9172e752938220738cd75d53f24eb73`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:30 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:46:30 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:46:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:46:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 14 Jul 2026 01:46:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc15c43daf97add9c374cf080de50ba735616832b27b206113997a5eedc427b`  
		Last Modified: Tue, 14 Jul 2026 01:46:50 GMT  
		Size: 184.9 MB (184947507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3d8ce3fba891776300f6ec00f085244cb18ab4e2572eed5e467d71ed05fcfdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5164f1021caf483e3b1422d49a4419843005799b09e5a66d2bfb5f1e9296cd7`

```dockerfile
```

-	Layers:
	-	`sha256:2f3dad5c93679b11256e22522d075e11c94be01d5b2fe8e0d9fec832ec1aef4a`  
		Last Modified: Tue, 14 Jul 2026 01:46:45 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.in-toto+json
