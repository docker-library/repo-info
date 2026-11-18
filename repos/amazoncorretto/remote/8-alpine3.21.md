## `amazoncorretto:8-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:4c866eb737aca6945f89c2f0dbbf92077ec8c5cb45b2570819ea5426d50bcf8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bac17fc9cf5e706fa9c2fc6752517f0a4e931b707caf2592fa1bb44d3b685b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104496410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84a1ea046265d66fb8598c20869214a6962616d8881f026315621643d9ae42e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:35 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:35 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:35 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803bbc76d4710d6e056a21b07af2f491ef2f78fc0af5f98dbd8d30e5d6f1f7bb`  
		Last Modified: Wed, 18 Nov 2026 02:45:49 GMT  
		Size: 100.9 MB (100871008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d9fd7fbd1c93327fb57739e0d411b07db7a9fce5b868caaa47ca58ac22d1befc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 KB (260294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f907445ff3bb680f4ed376888ccfc388deae3a853b3c071ba1e7803317f13481`

```dockerfile
```

-	Layers:
	-	`sha256:959253248d0e01820218c276bbba1968b923db16b2b0d3fa7c8907789d9e5660`  
		Last Modified: Wed, 18 Nov 2026 02:45:47 GMT  
		Size: 250.9 KB (250939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7aebacd5f85071d9707f1a0f4061c678a90a0aeb47fc16c4c2dd886679c21306`  
		Last Modified: Wed, 18 Nov 2026 02:45:46 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5c6a467026fe3999c53124b740d0510ea3157538cc837eb5e168011df6b79c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104673227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1818f1d642f600667e7b9f0c4b0b4492a077876b2e585640d6081394818ecc8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:46 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:46 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:46 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6841f0cd08648d0b57b438d6effee1ffa05ff82b6388ff08dab352b6cfab3ee`  
		Last Modified: Wed, 18 Nov 2026 02:46:01 GMT  
		Size: 100.7 MB (100698804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1e556abfb7b9b9404ec6f73da13717f8d8ea5284e02ece4bc175a8e0da0f2aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57dcda11b03a301faf74697ca80ad3a2c0cd69ddaa589d23dca85f4e1eb61ac`

```dockerfile
```

-	Layers:
	-	`sha256:4bc56199598ae0b78c11c8022cc10326afb30df6171c243ad203a25111f05c62`  
		Last Modified: Wed, 18 Nov 2026 02:45:58 GMT  
		Size: 251.1 KB (251071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f131303677ca031f86e5f8b021b48820c1928e076fb31176f5ab2fa73a644e70`  
		Last Modified: Wed, 18 Nov 2026 02:45:58 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
