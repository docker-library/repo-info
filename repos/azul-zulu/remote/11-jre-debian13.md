## `azul-zulu:11-jre-debian13`

```console
$ docker pull azul-zulu@sha256:6102d6bc98cc91c65cb7bda0ea70afcef3611b64cdc7068d44c32f40a6295805
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e80ae0cda84fb63963152043431a616c95e8ddf84b3c715fb776ae6aeaa88002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96467866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d373aaaf8852f92953ea88ea0c5bd5eb8d934ab28a9d402c904cf48da88a95`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:28:58 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:58 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:28:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db07dad6828e0a7f4eae6dd238367b737dc0a2799a08cfdfaa7063d17a9fa524`  
		Last Modified: Thu, 23 Jul 2026 22:29:08 GMT  
		Size: 66.7 MB (66686961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e0262af900cffb3ed9f819307db4938e5918fe7e6f5aa6417548b5e30adc0c65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a54823ca974d76c8a8af125ee609f406fc4ee6a3574e579623563bbe1b1c28`

```dockerfile
```

-	Layers:
	-	`sha256:3cb4a44fcd03ef017f0ff95a94152e1b379be3e8e2434d6c6dadd5c54b58b172`  
		Last Modified: Thu, 23 Jul 2026 22:29:06 GMT  
		Size: 9.2 KB (9189 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:803ad43f2fb6c63966d3cc1544b2c14cdf5f69d01f13d1439c1c64f75f0a9a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96639998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d919f64a17c6b4f38d991b7adb86ecaca67d9f77ccacfc9b9ec434d0829ebac2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:55 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:55 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963e25bc69cea5284c45496719474307589a98166838258f36dbbe32f200b6aa`  
		Last Modified: Thu, 23 Jul 2026 22:30:06 GMT  
		Size: 66.5 MB (66496293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f6f04d7713f7d529ec98e0f878fc31c8a9e61e172109135a8f76aa57c63a854d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d4e7ce28cb4c8b36e2639a43bca3a331b78411148352a8f6877ecdc1272f17`

```dockerfile
```

-	Layers:
	-	`sha256:c82f919c19c5ae81a33a5b9302396a7bdd7d20b26cd62f63da0f977ca56bd0fb`  
		Last Modified: Thu, 23 Jul 2026 22:30:04 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
