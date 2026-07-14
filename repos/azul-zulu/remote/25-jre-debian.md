## `azul-zulu:25-jre-debian`

```console
$ docker pull azul-zulu@sha256:5e8c2e3acf1d64d879185a022dc654af57cf859a12f270c6b7a247a94a19cce3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9a4f786feca206989bc99feeb3f24360f1695e83110a11c74ef8d0e173805803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120830135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e0ce572e87fa2ad4f6f93654e1cd49512c5e19f42d5f1cdc6619d117254575`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:42:44 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:42:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.3-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:42:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7270272553218ddaf0f32317170be78bd5b677425528b074c82ab28e4ac69516`  
		Last Modified: Tue, 14 Jul 2026 01:42:58 GMT  
		Size: 91.0 MB (91049230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:922fa4f99167e801f6a154e7f706357013f5accbb45603dccd06a8d13477f599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b94dab3018352f0a388695fb59fbc5885604f77aacdb80ed37af1f88b9d4f9a`

```dockerfile
```

-	Layers:
	-	`sha256:20422b968fef99ff79160d14d903af617b4c7f1d8a84b0ce6600be95f9d7adee`  
		Last Modified: Tue, 14 Jul 2026 01:42:56 GMT  
		Size: 9.2 KB (9187 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4aa1ea67b38d185942bc454159572886394ecbe4b77a08fb10f2f7b36a128ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120780055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41d6c96327b0f0b8aab75c3f160f5980c1cb22357694b5b14679ea6532af09a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:59 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:45:59 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:45:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.3-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:45:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ad52137a5d253d63488b36c26c9e2746ac22872efd8ef5fe76d5365ffb293d`  
		Last Modified: Tue, 14 Jul 2026 01:46:13 GMT  
		Size: 90.6 MB (90636350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:35c28818051306607d6a03cc447d5e6b35d088fafa37b292d22a51ebe09788af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896614a89f0666b834bc00faff7bd69a8be51fce1c2778da2e055d0a759146fc`

```dockerfile
```

-	Layers:
	-	`sha256:c394e1d6e4d7123b9d1ed9fd9f4a8bb11b57d253559e1e568739fcf35fcf3916`  
		Last Modified: Tue, 14 Jul 2026 01:46:11 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
