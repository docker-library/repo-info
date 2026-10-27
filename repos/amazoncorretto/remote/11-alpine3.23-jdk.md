## `amazoncorretto:11-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:b22198f828f55a70d179febf62043a20156d635b7faec6c15f583de0fc413ebc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:40a6ef47277c10f81f859101bb4daaa493ea92f926110042529aa0c9e588fe30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147853830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739df1a994d7d98124a606c2c8b8efe07e183e65eaf44c9cb1a35f7e6ea33427`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:44 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:39:44 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:44 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a35c709ae1687c1d7d800aee7d15ca74b120ea3b5d87eacc7d356046ee1c5f`  
		Last Modified: Tue, 27 Oct 2026 16:40:00 GMT  
		Size: 144.0 MB (144001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7c4412690afcf24e3de6b37586c53a91d7d35d2113c6b6bc677b9b92f93938c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (597030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bcd538bea3ba593c67ee2cc5ad95e7774352ccc76093600658a35a40f7e7a8b`

```dockerfile
```

-	Layers:
	-	`sha256:598f75b7362d63557462daa14d27111f38d3e67d75e7c310c4a224efba94d3c3`  
		Last Modified: Tue, 27 Oct 2026 16:39:57 GMT  
		Size: 587.7 KB (587651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27f7c12bbafb2e89342a2b76e015eca81d34757a6c24ffa2e97f9ad4fa8b78ce`  
		Last Modified: Tue, 27 Oct 2026 16:39:56 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:15fcf21c677d1d1e8c1f0804811222ce24f961079619d841813b229fb7d583d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146556637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66999a7ffda7f2e72ac1f58b3754aa961d62cd0ff68157ed437c053acd514fcf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:29 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:40:29 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:29 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29b082eafa3ebafda8d8193840a00e170473eb08fb86acd4f447b4ffe909e55`  
		Last Modified: Tue, 27 Oct 2026 16:40:46 GMT  
		Size: 142.4 MB (142367143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:72bfec7ef97510801efbc80f241b2e09e6daee3861919033e2cb6919f2c72a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c5c40bf88e0570ffefe105a053c4e80f08c743e72932947324b49757930465`

```dockerfile
```

-	Layers:
	-	`sha256:487c499023b38a175d0aca2a81698d40913f6ecc3bbfb9b9074468aa9422de91`  
		Last Modified: Tue, 27 Oct 2026 16:40:43 GMT  
		Size: 587.1 KB (587057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f989a7625864c17f7dab9feb4c5f2a5abf894966fd231fd67b83b8ce8b45dd46`  
		Last Modified: Tue, 27 Oct 2026 16:40:43 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
