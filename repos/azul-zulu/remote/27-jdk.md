## `azul-zulu:27-jdk`

```console
$ docker pull azul-zulu@sha256:ea5c4ac04eeab3514b5fa160881290fabebb51315412e0df8c8b86420f3e8c5e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a8ed57ea7e3fd26e78cac5719d5d50dd2dc204a1e525fc47ac2cdd290fcd7a61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215456614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db08c6163fb0640e652f6b1f105029efe5397a8080efdea2409e18d04da2c53`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:49 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:49 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 05 Nov 2026 07:37:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfa292ff9fcdebef2e222ccc396f68df034990b27f824e5896c1dadabe703db`  
		Last Modified: Thu, 05 Nov 2026 07:38:06 GMT  
		Size: 185.6 MB (185600482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d1b7db693430e2fb523926fd9d0c7ad5f7d8572ad376e430ddaf1397eb12fdee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d66c979bc2b229275fd523f898a8f72ef19287a6697f16fc696b8b2b68c0416`

```dockerfile
```

-	Layers:
	-	`sha256:882fb8f51c9febd3e61dda3b56212ddc6d9bb36a75e6f545f157db4eac8ebcd2`  
		Last Modified: Thu, 05 Nov 2026 07:38:02 GMT  
		Size: 9.5 KB (9520 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d9889af184a8a473b62e962bd84a319d9e88aa9ec5237c65b9004b52ccda7ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215501555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eaa0116c3c325e1d1f852ec9eeb17f7abc4a7b23b4ac8464bab03bbd547644b`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:38 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:41:38 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:41:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:41:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 05 Nov 2026 07:41:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe60e5702396de9e90b5d50a6219884c957e87b5eb0bd1c9c14434f1a61e2ff`  
		Last Modified: Thu, 05 Nov 2026 07:41:58 GMT  
		Size: 185.3 MB (185287518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fecd589ba92876ccac2c420c4b80280d0f93c55bd6caa2a8c0ee656c78db2e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d329346557a05231b2976efe29e2514bd97e2fb5cd04bcb06a88b934e49450db`

```dockerfile
```

-	Layers:
	-	`sha256:b48c9c999ee23afee5a10acbdef6f41f4b8429075d5387f5f9b6d408af2e6d64`  
		Last Modified: Thu, 05 Nov 2026 07:41:53 GMT  
		Size: 9.6 KB (9636 bytes)  
		MIME: application/vnd.in-toto+json
