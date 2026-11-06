## `amazoncorretto:11-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:8208d0cc8610defb05efb7dade30b53ca360f1f6ee301a9b7e064c6d5b762585
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:83ca2eb1ea50c741e60aa52cfadcaca8c7448a1ce03b07ffb92316b20dc84772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147623123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22425431561968296e6b73f1a51ca1c8d0dc657a5854db0ca1ae5330769b9cf0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:35 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:12:35 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:35 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa538b31afbe0fe2501bdc70dce6240163a3cfb5e76a87afae942829f736118`  
		Last Modified: Thu, 05 Nov 2026 19:12:52 GMT  
		Size: 144.0 MB (143997721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9c9132fbee527d83ec9d09291498dd58f9de74a3e03fbf99ca92d2b70a21265c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.8 KB (602750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda025441fcec73bf6416299d8be45446e1561753a7c8110b5f1cb634556989f`

```dockerfile
```

-	Layers:
	-	`sha256:624c4047802223fac85c02436f6828949a644f0cfbc20f6d6dabec9d30b4cbd3`  
		Last Modified: Thu, 05 Nov 2026 19:12:49 GMT  
		Size: 593.4 KB (593371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:460e3f9aeb7a042e0b18fec47404bc382e1835da505edc218864c6358d0a6442`  
		Last Modified: Thu, 05 Nov 2026 19:12:48 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5cf265258d067b9fad1bb9445a2b0d12289da25d3927184b5861364581641ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.3 MB (146333029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22a140f3142766f0ce35bda6e9a358c11900599343dcc935a40b8e3dc7539b8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:22 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:08:22 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9777543de03baac0fd4d472d75f70787698c0601e3f7b31d352ff6fe91f46a44`  
		Last Modified: Thu, 05 Nov 2026 19:08:39 GMT  
		Size: 142.4 MB (142358606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e5a521914245eab230eff85338b1d25af50b222a578308bbda5f1de826144b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 KB (602910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9224a308bae760f651dff031fb66013ac4cae96b352ce842dd9dde85cb4ec46`

```dockerfile
```

-	Layers:
	-	`sha256:0a8a1c954f5db74736a8e62ef1b237c24632fc9105a3d60eaa873d607272cf72`  
		Last Modified: Thu, 05 Nov 2026 19:08:36 GMT  
		Size: 593.4 KB (593427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0df2096418312175d4fcd0829aac6c8f1054683608db3e9c98448f582ed13aba`  
		Last Modified: Thu, 05 Nov 2026 19:08:36 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
